-- Day_13_P_2. Join services_weekly with staff to show weekly service data with staff information.

SELECT  sw.service, 
        sw.week, 
        sw.month, 
        sw.available_beds, 
        sw.patients_request,
        sw.patients_admitted, 
        sw.patients_refused,
        sw.patient_satisfaction, 
        sw.staff_morale, 
        sw.event,
        s.staff_id,
        s.staff_name,
        s.role
 FROM staff s
 JOIN services_weekly sw
 ON s.service = sw.service;