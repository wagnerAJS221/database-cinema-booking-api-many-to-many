const express = require('express')
const { createTickets } = require('../controllers/tickets')
const { router } = require('../server')

router.get('/:id', createTickets)

module.exports = router
