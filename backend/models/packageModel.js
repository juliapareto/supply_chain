const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const packageSchema = new Schema({
    content: {
        type:String,
        required: true
    },
    owner: {        
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
        
        // type:mongoose.Schema.Types.ObjectId,
        // ref: 'User',
        // required: true
      }

}, {timestamps: true})


module.exports = mongoose.model('Package', packageSchema);