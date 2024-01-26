create table client(
    num_client INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom varchar(50),
    prenom varchar(50),
    date_de_naissance DATE,
    e_mail varchar(50),
    mot_de_passe varchar(50),
    adresse varchar(50),
    ville varchar(150),
    pays varchar(50),
    code_postal INT,
    id_reservation INT,
    CONSTRAINT fk_client_reservation FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);
create table reservation(
    id_reservation INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_reservation DATE,
    assurance_annulation boolean,
    id_paiement INT,
    CONSTRAINT fk_reservation_paiement FOREIGN KEY (id_paiement) REFERENCES paiement(id_paiement),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);
create table paiement(
    id_paiement INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_de_paiement DATE,
    somme DECIMAL
);
create table voyage(
    num_voyage INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    description_de_la_destination varchar(250),
    nb_place_tolal INT,
    nom_destination varchar(50),
    id_reservation INT,
    CONSTRAINT fk_voyage_reservation FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
create table transport(
    num_transport INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type_de_transport varchar(50),
    id_embarquement INT,
    CONSTRAINT fk_transport_embarquement FOREIGN KEY (id_embarquement) REFERENCES embarquement(id_embarquement),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
create table embarquement(
    id_embarquement INT,
    Lieu_embarquement_aller varchar(150),
    Lieu_embarquement_retour varchar(150),
    Lieu_debarquement_aller varchar(150),
    Lieu_debarquement_retour varchar(150),
    Ville_embarquement_aller varchar(150),
    Ville_embarquement_retour varchar(150),
    Ville_debarquement_aller varchar(150),
    Ville_debarquement_retour varchar(150)

);
create table periode(
    id_periode INT,
    date_debut DATE,
    date_fin DATE,
    tarif DECIMAL 
 
);
create table voyage_periode (
    num_voyage INT,
    CONSTRAINT fk_voyage_periode_voyage FOREIGN KEY (num_voyage) REFERENCES voyage(num_voyage),
    id_periode INT,
    CONSTRAINT fk_voyage_periode_periode FOREIGN KEY (id_periode) REFERENCES periode(id_periode)
);
create table voyage_transport (
    num_voyage INT,
    CONSTRAINT fk_voyage_transport_voyage FOREIGN KEY (num_voyage) REFERENCES voyage(num_voyage),
    num_transport INT,
    CONSTRAINT fk_voyage_transport_transport FOREIGN KEY (num_transport) REFERENCES transport(num_transport)
);