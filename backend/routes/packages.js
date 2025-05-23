const express = require('express')
const {
    createPackage,
    getPackages,
    getPackage,
    deletePackage,
    updatePackage,
} = require('../controllers/packageController')
const requireAuth = require('../middleware/requireAuth')

const router = express.Router();

router.use(requireAuth)

router.get('/', getPackages);

router.get('/:id', getPackage);

router.post('/', createPackage);

router.delete('/:id', deletePackage);

router.patch('/:id', updatePackage);
module.exports = router