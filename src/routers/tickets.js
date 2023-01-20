const express = require("express");
const { createTickets } = require("../controllers/tickets");
const router = express.Router();

router.get("/:id", createTickets);

module.exports = router;
