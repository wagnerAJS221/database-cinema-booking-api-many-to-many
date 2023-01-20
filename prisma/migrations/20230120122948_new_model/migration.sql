-- CreateTable
CREATE TABLE "Seats" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "seatNumber" TEXT NOT NULL,

    CONSTRAINT "Seats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_SeatsToTicket" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Seats_seatNumber_key" ON "Seats"("seatNumber");

-- CreateIndex
CREATE UNIQUE INDEX "_SeatsToTicket_AB_unique" ON "_SeatsToTicket"("A", "B");

-- CreateIndex
CREATE INDEX "_SeatsToTicket_B_index" ON "_SeatsToTicket"("B");

-- AddForeignKey
ALTER TABLE "_SeatsToTicket" ADD CONSTRAINT "_SeatsToTicket_A_fkey" FOREIGN KEY ("A") REFERENCES "Seats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_SeatsToTicket" ADD CONSTRAINT "_SeatsToTicket_B_fkey" FOREIGN KEY ("B") REFERENCES "Ticket"("id") ON DELETE CASCADE ON UPDATE CASCADE;
