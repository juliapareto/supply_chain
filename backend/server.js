require('dotenv').config()

const express = require('express')
const mongoose = require('mongoose')
const packageRoutes = require('./routes/packages')
const userRoutes = require('./routes/user')

// Express APP
const app = express()

// Middleware
app.use(express.json())
app.use((req, res, next) => {
    console.log(req.path, req.method)
    next()
})

// Routes
app.use('/api/packages', packageRoutes)
app.use('/api/user', userRoutes)

mongoose.connect(process.env.MONGO_URI)
    .then(() => {
        app.listen(process.env.PORT, () => {
            console.log('Connected to db, listening on port', process.env.PORT)
        }) 
    })
    .catch((error) => {
        console.log(error)
    })

