const test = require("../database");

const userModel = {
    queryGetAllClients: () => {
    return test.query("select * from client");
  },
    queryGetAllReservations: () => {
    return test.query("select * from reservation");
  },
    queryGetAllVoyages: () => {
    return test.query("select * from voyage");
  },
    queryGetAllTransports: () => {
    return test.query("select * from transport");
  },
    queryGetAllPaiements: () => {
    return test.query("select * from paiement");
  },
};

module.exports = userModel;