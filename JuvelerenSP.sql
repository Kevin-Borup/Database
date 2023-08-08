CREATE OR REPLACE PROCEDURE RegisterCustomer(
    firstName varchar(20),
    lastName varchar(20),
    email varchar(30)
)
LANGUAGE plpgsql
as $$
BEGIN
    INSERT INTO customer(fname, lname, email)
    VALUES (firstName, lastName, email);
    commit;
END;
$$;

CREATE OR REPLACE PROCEDURE RegisterCategory(
    categoryName varchar(20)
)
LANGUAGE plpgsql
as $$
BEGIN
    INSERT INTO category(name)
    VALUES (categoryName);
    commit;
END;
$$;

CREATE OR REPLACE PROCEDURE RegisterStone(
    selecetedCategoryId int,
    caratAmount double precision,
    priceAmount double precision
)
LANGUAGE plpgsql
as $$
BEGIN
    INSERT INTO stone(categoryid, carat, price)
    VALUES (selecetedCategoryId, caratAmount, priceAmount);
    commit;
END;
$$;

CREATE OR REPLACE PROCEDURE CreateInvoice(
    selectedCustumerId int,
    selectedInvoicedate date
)
LANGUAGE plpgsql
as $$
BEGIN
    INSERT INTO invoice(customerid, invoicedate)
    VALUES (selectedCustumerId, selectedInvoicedate);
    commit;
END;
$$;

CREATE OR REPLACE PROCEDURE CreateReciept(
    selectedCustumerId int,
    selectedInvoicedate date,
    selectedStoneId int
)
LANGUAGE plpgsql AS
$$
    DECLARE invoiceID int;

BEGIN
    CALL CreateInvoice(selectedCustumerId, selectedInvoicedate);

    SELECT InvoiceID = currval('invoice_id_seq');

    INSERT INTO invoiceitem(invid, stoneid)
    VALUES (InvoiceID, selectedStoneId);
    commit;
END;
$$;
