-- Add triggers
CREATE OR REPLACE EDITIONABLE TRIGGER "BOOKING_DATE"
BEFORE INSERT ON "BOOKINGS"
FOR EACH ROW
BEGIN
    :NEW.booking_date := SYSDATE;
END;

ALTER TRIGGER "BOOKING_DATE" ENABLE;
