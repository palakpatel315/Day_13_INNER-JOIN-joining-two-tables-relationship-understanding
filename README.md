# 📘 21 Days SQL Challenge – Day 13  
### **Topic:** INNER JOIN – Connecting Data Across Tables  

---

## 🎯 **Objective**  
The focus for **Day 13** was to understand how **INNER JOIN** helps combine data from multiple tables, allowing us to build richer and more meaningful reports using relational data.

---

## 🧠 **Key Learnings**

- INNER JOIN returns only rows that match in both tables.
- Joins help connect **patients**, **staff**, **weekly service data**, and **schedules**.
- Learned to use **table aliases** (`p`, `s`, `sw`, `ss`) to keep queries clean.
- Understood how JOIN conditions work differently from WHERE conditions.
- Practiced building reports that combine multiple tables with grouping and ordering.

---

## 🧩 **Daily Challenge**

### **Question:**  
Create a comprehensive report showing **patient_id**, **patient name**, **age**, **service**, and the **total number of staff members** in their service.  
Only include patients from services with **more than 5 staff members**.  
Order results by **staff count (descending)** and then by **patient name**.

### ✅ **SQL Query Used**

```sql
SELECT p.patient_id,
       p.name AS Patient_Name,
       p.age,
       p.service,
       COUNT(s.staff_id) AS Total_Staff_Members
FROM patients p
JOIN staff s
ON p.service = s.service
GROUP BY p.patient_id,
         p.name,
         p.age,
				 p.service 
HAVING COUNT(s.staff_id) >5
ORDER BY Total_Staff_Members DESC,
         Patient_Name ;
```


## 📸 **SQL Queries**

![Check_SQL Query File](https://github.com/palakpatel315/Day_13_INNER-JOIN-joining-two-tables-relationship-understanding/tree/main/Day_13_SQL_Queries)


---
Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

---

## 👩‍💻 **About Me**
**Palak Patel**  
*Aspiring Data Analyst | Skilled in SQL, Power BI, Excel*  
📍 Passionate about turning data into insights and solving real-world business problems.  

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/palak-patel-0711242a0/)

---
