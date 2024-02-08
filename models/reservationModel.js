const test = require("../database");

const reservationModel = {
queryGetAllReservations: () => {
    return test.query("select * from reservation");
  },
queryAddNewResa: ({ date_reservation, assurance_annulation }) => {
    return test.query(
      "insert into reservation(date_reservation, assurance_annulation) VALUES(?, ?)", [date_reservation, assurance_annulation]
    );
   },
}

module.exports = reservationModel;
