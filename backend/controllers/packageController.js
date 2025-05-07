const Package = require('../models/packageModel')
const mongoose = require('mongoose');

// GET all
const getPackages = async (req, res) => {
    const packages = await Package.find({}).sort({createdAt: -1})
    res.status(200).json(packages)
}

// GET single
const getPackage = async (req, res) => {
    const { id } = req.params

    if (!mongoose.Types.ObjectId.isValid(id)) {
        return res.status(404).json({ error: 'No such package' });
    }

    const package = await Package.findById(id)

    if (!package) {
        return res.status(404).json({error: 'No such package'})
    }
    res.status(200).json(package)
}

// POST single
const createPackage = async (req, res) => {
    const {content, owner, weight} = req.body

    let emptyFields = []

    if (!content) {
      emptyFields.push('content')
    }
    if (!owner) {
      emptyFields.push('owner')
    }
    if (!weight) {
      emptyFields.push('weight')
    }
    if (emptyFields.length > 0) {
      return res.status(400).json({ error: 'Please fill in all fields', emptyFields })
    }

    try{
        const package = await Package.create({content, owner, weight})
        res.status(200).json(package)
    } catch (error) {
        res.status(400).json({error: error.message})
    }

}

// DELETE single
const deletePackage = async (req, res) => {
    const { id } = req.params;
  
    if (!mongoose.Types.ObjectId.isValid(id)) {
      return res.status(400).json({ error: 'No such Package' });
    }
  
    const package = await Package.findById(id);
  
    if (!package) {
      return res.status(400).json({ error: 'No such package' });
    }
  
    // if (blog.authorid.toString() !== req.user._id.toString()) {
    //   return res.status(403).json({ error: 'You are not authorized to delete this blog' });
    // }
  
    await Package.findByIdAndDelete(id);
  
    // await User.findByIdAndUpdate(req.user._id, { $pull: { posts: blog._id } });
  
    res.status(200).json(package);
  };

// PATCH single
const updatePackage = async (req, res) => {
    const { id } = req.params;
  
    if (!mongoose.Types.ObjectId.isValid(id)) {
      return res.status(400).json({ error: 'No such package' });
    }
  
    const package = await Package.findOneAndUpdate({ _id: id }, { ...req.body }, { new: true });
  
    if (!package) {
      return res.status(400).json({ error: 'No such package' });
    }
  
    res.status(200).json(package);
};

module.exports = {
    createPackage,
    getPackages,
    getPackage,
    deletePackage,
    updatePackage
}