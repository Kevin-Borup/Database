CREATE TABLE Customer (
    id SERIAL,
    fname varchar(20),
    lname varchar(20),
    email varchar(30),
    CONSTRAINT PkCustomer_id PRIMARY KEY (id)
);

CREATE TABLE Invoice (
    id SERIAL,
    customerId SERIAL,
    invoiceDate date,
    CONSTRAINT PkInvoice_id PRIMARY KEY (id),
    CONSTRAINT FkInvoice_customerId FOREIGN KEY (customerId) REFERENCES Customer(id),
    CONSTRAINT ChInvoice_date CHECK (invoiceDate <= current_date)
);

CREATE TABLE Category (
    id SERIAL,
    name varchar(20),
    CONSTRAINT PkCategory_id PRIMARY KEY (id)
);

CREATE TABLE Stone (
    id SERIAL,
    categoryId SERIAL,
    carat FLOAT,
    price FLOAT,
    CONSTRAINT PkStone_id PRIMARY KEY (id),
    CONSTRAINT FkStone_categoryId FOREIGN KEY (categoryId) REFERENCES Category(id),
    CONSTRAINT ChStone_price CHECK (price >= 0)
);

CREATE TABLE InvoiceItem (
    invId SERIAL,
    stoneId SERIAL,
    CONSTRAINT PkInvoiceItem_invIdstoneId PRIMARY KEY (invId, stoneId),
    CONSTRAINT FkInvoiceItem_invId FOREIGN KEY (invId) REFERENCES Invoice(id),
    CONSTRAINT FkInvoiceItem_stoneId FOREIGN KEY (stoneId) REFERENCES Stone(id)
);

CREATE SEQUENCE SeqCustomer_id
START 1000
INCREMENT 1
MINVALUE 1000
OWNED BY customer.id;

CREATE SEQUENCE SeqStone_id
START 10000
INCREMENT 2
MINVALUE 1000
OWNED BY stone.id;

CREATE SEQUENCE SeqInvoice_id
START 100000
INCREMENT 1
MINVALUE 100000
OWNED BY invoice.id;

ALTER TABLE Customer
    ALTER COLUMN id SET DEFAULT nextval('SeqCustomer_id');

ALTER TABLE Stone
    ALTER COLUMN id SET DEFAULT nextval('SeqStone_id');

ALTER TABLE Invoice
    ALTER COLUMN id SET DEFAULT nextval('SeqInvoice_id');

INSERT INTO Category (name)
    VALUES ('Diamanter'), ('Rubiner'), ('Safirer'), ('Smaragder');

INSERT INTO Stone (categoryId, carat, price)
    VALUES (1, 23.9, 2300), (1, 530.2, 23002432), (3, 213.2, 238393);

INSERT INTO Customer(fname, lname, email)
    VALUES ('Kevin', 'Hansen', 'email@mail.dk'), ('John', 'Smith', 'jogn@mail.dk');

INSERT INTO Invoice (customerId, invoiceDate)
    VALUES (1000, current_date), (1001, '2020-01-01');

INSERT INTO InvoiceItem(invId, stoneId)
    VALUES (100000, 10002), (100001, 10004);

