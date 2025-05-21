const User = require('../models/userModel')
const jwt = require('jsonwebtoken')

const createToken = (_id) => {
    return jwt.sign({_id}, process.env.JWT_SECRET, { expiresIn: '3d' })
  }
  
// const mongoose = require('mongoose');

// // GET all
// const getPackages = async (req, res) => {
//     const packages = await Package.find({}).sort({createdAt: -1})
//     res.status(200).json(packages)
// }

// // GET single
// const getPackage = async (req, res) => {
//     const { id } = req.params

//     if (!mongoose.Types.ObjectId.isValid(id)) {
//         return res.status(404).json({ error: 'No such package' });
//     }

//     const package = await Package.findById(id)

//     if (!package) {
//         return res.status(404).json({error: 'No such package'})
//     }
//     res.status(200).json(package)
// }

// POST single
const loginUser = async (req, res) => {

    const {email, password} = req.body

    try{
        const user = await User.login(email, password)
  
        // create a token
        const token = createToken(user._id)
    res.status(200).json({ 
      email: user.email, 
      channelID: user.channelID,
      token 
    })
    } catch (error) {
        res.status(400).json({error: error.message})
    }

}

// POST single
const signupUser = async (req, res) => {
    const {email, channelID, password} = req.body
  
    try {
      const user = await User.signup(email, channelID, password)
  
      // create a token
      const token = createToken(user._id)
  
      res.status(200).json({email, channelID, token})
    } catch (error) {
      res.status(400).json({error: error.message})
    }
  }

// // DELETE single
// const deletePackage = async (req, res) => {
//     const { id } = req.params;
  
//     if (!mongoose.Types.ObjectId.isValid(id)) {
//       return res.status(400).json({ error: 'No such Package' });
//     }
  
//     const package = await Package.findById(id);
  
//     if (!package) {
//       return res.status(400).json({ error: 'No such package' });
//     }
  
//     // if (blog.authorid.toString() !== req.user._id.toString()) {
//     //   return res.status(403).json({ error: 'You are not authorized to delete this blog' });
//     // }
  
//     await Package.findByIdAndDelete(id);
  
//     // await User.findByIdAndUpdate(req.user._id, { $pull: { posts: blog._id } });
  
//     res.status(200).json(package);
//   };

// // PATCH single
// const updatePackage = async (req, res) => {
//     const { id } = req.params;
  
//     if (!mongoose.Types.ObjectId.isValid(id)) {
//       return res.status(400).json({ error: 'No such package' });
//     }
  
//     const package = await Package.findOneAndUpdate({ _id: id }, { ...req.body }, { new: true });
  
//     if (!package) {
//       return res.status(400).json({ error: 'No such package' });
//     }
  
//     res.status(200).json(package);
// };

module.exports = {
    loginUser,
    signupUser,
//     getPackage,
//     deletePackage,
//     updatePackage
}