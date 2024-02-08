const test = require("../database");

const paiementModel = {
    queryGetAllPaiements: () => {
    return test.query("select * from paiement");
  },
  queryAddNewPaiement: ({ date_de_paiement, somme }) => {
    return test.query(
      "insert into paiement(date_de_paiement, somme) VALUES(?, ?)", [date_de_paiement, somme]
    );
   },
}

module.exports = paiementModel;