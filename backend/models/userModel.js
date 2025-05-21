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
    channelID: {
        type:String,
        required: false,
        unique:true
    },
    password: {
        type: String,
        required: true
    }
})

userSchema.statics.signup = async function(email, channelID, password) {

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

    const email_exists = await this.findOne({ email })

    if (email_exists) {
        throw Error('Email already in use.')
    }

    const channelID_exists = await this.findOne({ channelID })

    if (channelID_exists) {
        throw Error('Incorrect Channel ID.')
    }
    
    const salt = await bcrypt.genSalt(10)
    const hash = await bcrypt.hash(password, salt)

    const user = await this.create({email, channelID, password: hash})

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
