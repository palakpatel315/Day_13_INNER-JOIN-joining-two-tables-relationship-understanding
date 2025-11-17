-- Day_13_P_3. Create a report showing patient information along with staff assigned to their service.

SELECT p.service,
       p.patient_id,
       p.name AS Patient_Name,
       p.age,
       p.arrival_date,
       p.departure_date,
       p.satisfaction,
       s.staff_id,
       s.staff_name,
       s.role
FROM patients p
JOIN staff s
ON p.service = s.service
ORDER BY p.service, p.patient_id;