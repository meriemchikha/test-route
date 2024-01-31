create table client(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom varchar(50),
    prenom varchar(50),
    date_de_naissance DATE,
    e_mail varchar(50),
    mot_de_passe varchar(50),
    num_telephone varchar(15),
    adresse varchar(50),
    ville varchar(150),
    pays varchar(50),
    code_postal varchar(15),
    id_reservation INT,
    CONSTRAINT fk_client_reservation FOREIGN KEY (id_reservation) REFERENCES reservation(id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

INSERT INTO client (nom, prenom, date_de_naissance, e_mail, mot_de_passe, adresse, ville, code_postal, pays, id_reservation, num_telephone)
VALUES 
('Martinez', 'Julie', '1992-07-12', 'julie.martinez@email.com', 'mdp789', '808 Rue de la Roquette', 'Paris', '75003', 'France', 11, '0123456789'),
('Lemoine', 'Alexandre', '1989-01-25', 'alexandre.lemoine@email.com', 'pass321', '909 Boulevard Montparnasse', 'Lyon', '69003', 'France', 12, '0234 56 78 90'),
('Blanc', 'Camille', '1986-04-30', 'camille.blanc@email.com', 'secure987', '1010 Avenue de la Porte de Clichy', 'Marseille', '13003', 'France', 13, '03 45 67 89 01'),
('Guerin', 'Mathieu', '1995-11-08', 'mathieu.guerin@email.com', 'password654', '111 Rue de la Pompe', 'Toulouse', '31003', 'France', 14, '04 56 78 90 12'),
('Riviere', 'Laura', '1980-09-20', 'laura.riviere@email.com', 'mdp456', '1212 Avenue des Ternes', 'Nice', '06003', 'France', 15, '05 67 89 01 23'),
('Leroux', 'Thomas', '1993-03-15', 'thomas.leroux@email.com', 'pass789', '1313 Boulevard Victor Hugo', 'Paris', '75004', 'France', 16, '06 78 90 12 34'),
('Berger', 'Elodie', '1987-06-02', 'elodie.berger@email.com', 'secure234', '1414 Rue de la Villette', 'Lyon', '69004', 'France', 17, '07 89 01 23 45'),
('Blanchard', 'Hugo', '1990-12-18', 'hugo.blanchard@email.com', 'mdp567', '1515 Avenue de la Bourdonnais', 'Marseille', '13004', 'France', 18, '08 90 12 34 56'),
('Lefevre', 'Caroline', '1984-08-05', 'caroline.lefevre@email.com', 'password123', '1616 Boulevard Pereire', 'Toulouse', '31004', 'France', 19, '09 01 23 45 67'),
('Mercier', 'Nicolas', '1998-02-28', 'nicolas.mercier@email.com', 'secure789', '1717 Rue de la Pompe', 'Nice', '06004', 'France', 20, '10 12 34 56 78'),
('Garcia', 'Sophia', '1987-03-27', 'sophia.garcia@email.com', 'mdp987', '303 Rue de la Bastille', 'Paris', '75002', 'France', 6, '02 34 56 78 90'),
('Roux', 'Antoine', '1991-09-14', 'antoine.roux@email.com', 'pass654', '404 Boulevard Haussmann', 'Lyon', '69002', 'France', 7, '03 45 67 89 01'),
('Fournier', 'Luc', '1983-06-08', 'luc.fournier@email.com', 'password321', '505 Avenue des Gobelins', 'Marseille', '13002', 'France', 8, '04 56 78 90 23'),
('Leclerc', 'Marie', '1998-12-03', 'marie.leclerc@email.com', 'secure789', '606 Rue du Cherche-Midi', 'Toulouse', '31002', 'France', 9, '05 67 89 01 23'),
('Girard', 'Thomas', '1984-05-18', 'thomas.girard@email.com', 'mdp234', '707 Avenue de la Grande Armée', 'Nice', '06002', 'France', 10, '06 78 90 12 34'),
('Dupont', 'Jean', '1990-05-15', 'jean.dupont@email.com', 'mdp123', '123 Rue de la République', 'Paris', '75001', 'France', 1, '01 23 45 67 89'),
('Martin', 'Sophie', '1985-08-22', 'sophie.martin@email.com', 'pass456', '456 Avenue des Champs-Élysées', 'Lyon', '69001', 'France', 2, '04 56 78 90 12'),
('Dubois', 'Pierre', '1992-02-10', 'pierre.dubois@email.com', 'password789', '789 Boulevard Saint-Michel', 'Marseille', '13001', 'France', 3, '06 78 90 12 34'),
('Lefevre', 'Isabelle', '1980-11-30', 'isabelle.lefevre@email.com', 'securepass', '101 Rue du Faubourg Saint-Antoine', 'Toulouse', '31001', 'France', 4, '05 43 21 98 76'),
('Moreau', 'Nicolas', '1995-04-18', 'nicolas.moreau@email.com', 'mdp567', '202 Avenue de la Libération', 'Nice', '06001', 'France', 5, '07 65 43 21 09');

create table reservation(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_reservation DATE,
    assurance_annulation boolean,
    id_paiement INT,
    CONSTRAINT fk_reservation_paiement FOREIGN KEY (id_paiement) REFERENCES paiement(id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO reservation (date_reservation, assurance_annulation, id_paiement)
VALUES 
('2024-01-25', 1, 1), 
('2024-01-26', 0, 2), 
('2024-01-27', 1, 3),
('2024-01-28', 0, 4),
('2024-01-29', 1, 5),
('2024-01-30', 0, 6),
('2024-01-31', 1, 7),
('2024-02-01', 1, 8),
('2024-02-02', 0, 9),
('2024-02-07', 1, 10),
('2024-02-08', 0, 11),
('2024-02-09', 1, 12),
('2024-02-10', 0, 13),
('2024-02-11', 1, 14),
('2024-02-12', 1, 15),
('2024-02-15', 0, 16),
('2024-02-21', 1, 17),
('2024-02-27', 0, 18),
('2024-02-16', 1, 19),
('2024-02-18', 1, 20);

create table paiement(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_de_paiement DATE,
    somme DECIMAL(10,2) NOT NULL
);

INSERT INTO paiement (date_de_paiement, somme)
VALUES 
('2024-02-07', 120.00),
('2024-02-08', 180.50),
('2024-02-09', 90.75),
('2024-02-10', 250.00),
('2024-02-11', 130.25),
('2024-02-12', 200.00),
('2024-02-13', 150.50),
('2024-02-14', 175.25),
('2024-02-15', 210.00),
('2024-02-16', 110.75),
('2024-02-17', 140.00),
('2024-02-18', 190.50),
('2024-02-19', 110.75),
('2024-02-20', 275.00),
('2024-02-21', 120.25),
('2024-02-22', 180.00),
('2024-02-23', 160.50),
('2024-02-24', 195.25),
('2024-02-25', 225.00),
('2024-02-26', 95.75);

create table voyage(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    description_de_la_destination varchar(250),
    nb_place_tolal INT,
    nom_destination varchar(50),
    id_reservation INT,
    CONSTRAINT fk_voyage_reservation FOREIGN KEY (id_reservation) REFERENCES reservation(id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO voyage (id_reservation, description_de_la_destination, nb_place_total, nom_destination)
VALUES (1, 'Description 1', 10, 'Destination 1'),
       (2, 'Description 2', 15, 'Destination 2'),
       (3, 'Description 3', 20, 'Destination 3'),
       (4, 'Description 4', 8, 'Destination 4'),
       (5, 'Description 5', 12, 'Destination 5'),
       (6, 'Description 6', 18, 'Destination 6'),
       (7, 'Description 7', 25, 'Destination 7'),
        (8, 'Description 8', 30, 'Destination 8'),
        (9, 'Description 9', 15, 'Destination 9'),
        (10, 'Description 10', 20, 'Destination 10'),
        (11, 'Description 11', 10, 'Destination 11'),
        (12, 'Description 12', 5, 'Destination 12'),
        (13, 'Description 13', 18, 'Destination 13'),
        (14, 'Description 14', 22, 'Destination 14'),
        (15, 'Description 15', 12, 'Destination 15'),
        (16, 'Description 16', 28, 'Destination 16'),
        (17, 'Description 17', 14, 'Destination 17'),
        (18, 'Description 18', 19, 'Destination 18'),
        (19, 'Description 19', 7, 'Destination 19'),
        (20, 'Description 20', 11, 'Destination 20');

create table transport(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type_de_transport varchar(50),
    id_embarquement INT,
    CONSTRAINT fk_transport_embarquement FOREIGN KEY (id_embarquement) REFERENCES embarquement(id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO transport (type_de_transport, id_embarquement)
VALUES 
('Avion', 1),
('Train', 2),
('Bus', 3),
('Voiture', 4),
('Bateau', 5),
('Avion', 6),
('Train', 7),
('Bus', 8),
('Voiture', 9),
('Bateau', 10),
('Avion', 11),
('Train', 12),
('Bus', 13),
('Voiture', 14),
('Bateau', 15),
('Avion', 16),
('Train', 17),
('Bus', 18),
('Voiture', 19),
('Bateau', 20);

create table embarquement(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Lieu_embarquement_aller varchar(150),
    Lieu_embarquement_retour varchar(150),
    Lieu_debarquement_aller varchar(150),
    Lieu_debarquement_retour varchar(150),
    Ville_embarquement_aller varchar(150),
    Ville_embarquement_retour varchar(150),
    Ville_debarquement_aller varchar(150),
    Ville_debarquement_retour varchar(150)

);

INSERT INTO embarquement (
    Lieu_embarquement_aller, 
    Lieu_embarquement_retour, 
    Lieu_debarquement_aller, 
    Lieu_debarquement_retour, 
    Ville_embarquement_aller, 
    Ville_embarquement_retour, 
    Ville_debarquement_aller, 
    Ville_debarquement_retour
) VALUES 
('Aéroport A Aller', 'Aéroport A Retour', 'Port A Aller', 'Port A Retour', 'Ville A Aller', 'Ville A Retour', 'Destination A Aller', 'Destination A Retour'),
('Aéroport B Aller', 'Aéroport B Retour', 'Port B Aller', 'Port B Retour', 'Ville B Aller', 'Ville B Retour', 'Destination B Aller', 'Destination B Retour'),
('Gare C Aller', 'Gare C Retour', 'Port C Aller', 'Port C Retour', 'Ville C Aller', 'Ville C Retour', 'Destination C Aller', 'Destination C Retour'),
('Gare D Aller', 'Gare D Retour', 'Port D Aller', 'Port D Retour', 'Ville D Aller', 'Ville D Retour', 'Destination D Aller', 'Destination D Retour'),
('Station E Aller', 'Station E Retour', 'Port E Aller', 'Port E Retour', 'Ville E Aller', 'Ville E Retour', 'Destination E Aller', 'Destination E Retour'),
('Aéroport F Aller', 'Aéroport F Retour', 'Port F Aller', 'Port F Retour', 'Ville F Aller', 'Ville F Retour', 'Destination F Aller', 'Destination F Retour'),
('Gare G Aller', 'Gare G Retour', 'Port G Aller', 'Port G Retour', 'Ville G Aller', 'Ville G Retour', 'Destination G Aller', 'Destination G Retour'),
('Station H Aller', 'Station H Retour', 'Port H Aller', 'Port H Retour', 'Ville H Aller', 'Ville H Retour', 'Destination H Aller', 'Destination H Retour'),
('Aéroport I Aller', 'Aéroport I Retour', 'Port I Aller', 'Port I Retour', 'Ville I Aller', 'Ville I Retour', 'Destination I Aller', 'Destination I Retour'),
('Gare J Aller', 'Gare J Retour', 'Port J Aller', 'Port J Retour', 'Ville J Aller', 'Ville J Retour', 'Destination J Aller', 'Destination J Retour'),
('Station K Aller', 'Station K Retour', 'Port K Aller', 'Port K Retour', 'Ville K Aller', 'Ville K Retour', 'Destination K Aller', 'Destination K Retour'),
('Aéroport L Aller', 'Aéroport L Retour', 'Port L Aller', 'Port L Retour', 'Ville L Aller', 'Ville L Retour', 'Destination L Aller', 'Destination L Retour'),
('Gare M Aller', 'Gare M Retour', 'Port M Aller', 'Port M Retour', 'Ville M Aller', 'Ville M Retour', 'Destination M Aller', 'Destination M Retour'),
('Station N Aller', 'Station N Retour', 'Port N Aller', 'Port N Retour', 'Ville N Aller', 'Ville N Retour', 'Destination N Aller', 'Destination N Retour'),
('Aéroport O Aller', 'Aéroport O Retour', 'Port O Aller', 'Port O Retour', 'Ville O Aller', 'Ville O Retour', 'Destination O Aller', 'Destination O Retour'),
('Gare P Aller', 'Gare P Retour', 'Port P Aller', 'Port P Retour', 'Ville P Aller', 'Ville P Retour', 'Destination P Aller', 'Destination P Retour'),
('Station Q Aller', 'Station Q Retour', 'Port Q Aller', 'Port Q Retour', 'Ville Q Aller', 'Ville Q Retour', 'Destination Q Aller', 'Destination Q Retour'),
('Aéroport R Aller', 'Aéroport R Retour', 'Port R Aller', 'Port R Retour', 'Ville R Aller', 'Ville R Retour', 'Destination R Aller', 'Destination R Retour'),
('Gare S Aller', 'Gare S Retour', 'Port S Aller', 'Port S Retour', 'Ville S Aller', 'Ville S Retour', 'Destination S Aller', 'Destination S Retour'),
('Station T Aller', 'Station T Retour', 'Port T Aller', 'Port T Retour', 'Ville T Aller', 'Ville T Retour', 'Destination T Aller', 'Destination T Retour');


create table periode(
    id INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_debut DATE,
    date_fin DATE,
    tarif DECIMAL(10,2) NOT NULL 
 
);

INSERT INTO periode (date_debut, date_fin, tarif)
VALUES 
('2024-01-01', '2024-01-10', 100.50),
('2024-02-15', '2024-02-28', 120.75),
('2024-03-10', '2024-03-20', 90.25),
('2024-04-05', '2024-04-15', 110.00),
('2024-05-01', '2024-05-10', 105.50),
('2024-06-15', '2024-06-25', 130.00),
('2024-07-10', '2024-07-20', 95.75),
('2024-08-05', '2024-08-15', 115.25),
('2024-09-01', '2024-09-10', 98.50),
('2024-10-15', '2024-10-25', 125.00),
('2024-11-10', '2024-11-20', 85.25),
('2024-12-05', '2024-12-15', 112.75),
('2025-01-01', '2025-01-10', 102.00),
('2025-02-15', '2025-02-28', 118.50),
('2025-03-10', '2025-03-20', 92.75),
('2025-04-05', '2025-04-15', 107.00),
('2025-05-01', '2025-05-10', 99.25),
('2025-06-15', '2025-06-25', 122.00),
('2025-07-10', '2025-07-20', 94.50),
('2025-08-05', '2025-08-15', 113.75);

create table voyage_periode (
    id_voyage INT,
    CONSTRAINT fk_voyage_periode_voyage FOREIGN KEY (id_voyage) REFERENCES voyage(id),
    id_periode INT,
    CONSTRAINT fk_voyage_periode_periode FOREIGN KEY (id_periode) REFERENCES periode(id)
);
create table voyage_transport (
    id_voyage INT,
    CONSTRAINT fk_voyage_transport_voyage FOREIGN KEY (id_voyage) REFERENCES voyage(id),
    id_transport INT,
    CONSTRAINT fk_voyage_transport_transport FOREIGN KEY (id_transport) REFERENCES transport(id)
);