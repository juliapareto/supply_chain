const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const packageSchema = new Schema({
    content: {
        type:String,
        required: true
    },
    owner: {
        // type:mongoose.Schema.Types.ObjectId,
        // ref: 'User',
        // required: true
        
        type:String,
        required: true
    },
    weight: {
        type: Number,
        required: true
    }
}, {timestamps: true})


module.exports = mongoose.model('Package', packageSchema);