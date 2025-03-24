const express = require("express")
const {
    createWorkout,
    getWorkouts,
    getWorkout,
    deleteWorkout,
    updateWorkout
} = require('../controllers/workoutController')

const router = express.Router()

//GET all workouts
router.get('/',getWorkouts)

//GET single workouts
router.get('/:id',getWorkout)

//POST a new workout
router.post('/', createWorkout)

router.delete('/:id', deleteWorkout)

// UPDATE a workout
router.patch('/:id', updateWorkout)

//export the router
module.exports = router

