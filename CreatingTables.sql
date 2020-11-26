CREATE TABLE Landlord(
	idLandlord int, 	
	nameLandlord varchar(255), 
	phoneNumber varchar(255), 
	yearsEmployed int,
    PRIMARY KEY (idLandlord)
);

CREATE TABLE Property(
	idProperty int, 
	address varchar(255), 
	type ENUM("House","Apartment","Townhouse"),
    idLandlord int, 	
    PRIMARY KEY (idProperty),
    FOREIGN KEY (idLandlord) REFERENCES Landlord(idLandlord)
);

CREATE TABLE Tenant(
	idTenant int, 
	nameTenant varchar(255), 
	phoneNumber varchar(255), 
	creditRating int,
    idProperty int, 
	room varchar(255),
    PRIMARY KEY (idTenant),
    FOREIGN KEY (idProperty) REFERENCES Property(idProperty)
);

CREATE TABLE Payment(
	idPayment int, 
	paymentDate date, 
	amount double,
    idTenant int, 
    PRIMARY KEY (idPayment),
    FOREIGN KEY (idTenant) REFERENCES Tenant(idTenant)
);
