-- Day_13_P_1. Join patients and staff based on their common service field (show patient and staff who work in same service).

SELECT p.name AS Patient_Name, 
       s.staff_name AS Staff_Name,
       p.service AS Service
 FROM patients p
 JOIN staff s ON p.service = s.service ;