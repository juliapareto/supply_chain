const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const packageSchema = new Schema({
    ID: {
        type:String,
        required: true
    },
    description: {        
        type:String,
        required: true
    },
    weight: {
        type: Number,
        required: true
    },
    user_id: {
        type: String,
        required: true
    }

}, {timestamps: true})


module.exports = mongoose.model('Package', packageSchema);