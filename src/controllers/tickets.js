const { Prisma } = require("@prisma/client");
const prisma = require("../utils/prisma");

const createTickets = async (req, res) => {
  const { seatNumber, ticketNumber } = Number(req.params.id);
  const ticket = await prisma.ticket.findMany({
    where: {
      id: { seatNumber, ticketNumber },
    },
  });
  res.json({ data: ticket });
};
module.exports = { createTickets };
