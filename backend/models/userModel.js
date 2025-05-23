const mongoose = require('mongoose')
const bcrypt = require('bcrypt')
const validator = require ('validator')

const Schema = mongoose.Schema

const userSchema = new Schema({
    email: {
        type:String,
        required: true,
        unique:true
    },
    password: {
        type: String,
        required: true
    }
})

userSchema.statics.signup = async function(email, password) {

    if (!email || !password) {
        throw Error('All fields must be filled.')
    }

        // EMAIL validation off for testing
    // if (!validator.isEmail(email)){
    //     throw Error('Email is not valid.')
    // }
        // PASSWORD validation off for testing
    // if (!validator.isStrongPassword(password)){
    //     throw Error('Password is not strong enough.')
    // }

    const exists = await this.findOne({ email })

    if (exists) {
        throw Error('Email already in use.')
    }
    
    const salt = await bcrypt.genSalt(10)
    const hash = await bcrypt.hash(password, salt)

    const user = await this.create({email, password: hash})

    return user

}

userSchema.statics.login = async function(email, password) {

    if (!email || !password) {
        throw Error('All fields must be filled.')
    }
    const user = await this.findOne({ email })

    if (!user) {
        throw Error('Email not found.')
    }
    
    const match = await bcrypt.compare(password, user.password)
    if (!match) {
        throw Error('Password incorrect.')
    }

    return user
}


module.exports = mongoose.model('User', userSchema)
