const test = require("../database");

const userModel = {
queryGetAllClients: () => {
    return test.query("select * from client");
  },  
queryAddNewClient: ({ nom, prenom, date_de_naissance, e_mail, num_telephone, mot_de_passe, adresse, ville, code_postal, pays }) => {
    return test.query(
      "insert into client(nom, prenom, date_de_naissance, e_mail, num_telephone, mot_de_passe, adresse, ville, code_postal, pays) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", [nom, prenom, date_de_naissance, e_mail, num_telephone, mot_de_passe, adresse, ville, code_postal, pays]
    );
   },
   
};

module.exports = userModel;