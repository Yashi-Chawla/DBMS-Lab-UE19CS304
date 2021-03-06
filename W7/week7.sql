-- Q1
(SELECT DISTINCT PNUMBER
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE DNUM = DNUMBER AND MGR_SSN = SSN AND LNAME = 'Smith')
UNION
(SELECT DISTINCT PNUMBER
FROM PROJECT, WORKS_ON, EMPLOYEE
WHERE PNUMBER = PNO AND ESSN = SSN AND LNAME = 'Smith');

-- Q2
SELECT FNAME, MINIT, LNAME FROM EMPLOYEE WHERE SSN NOT IN ((SELECT SSN FROM EMPLOYEE) INTERSECT (SELECT ESSN FROM DEPENDENT));

-- Q3
SELECT SSN FROM EMPLOYEE WHERE DNO=5
UNION
SELECT SUPER_SSN FROM EMPLOYEE WHERE DNO=5;

-- Q4

(SELECT PNUMBER FROM PROJECT WHERE DNUM=5)
INTERSECT
(SELECT PNO FROM WORKS_ON WHERE Essn='123456789');

-- Q5
(SELECT SSN FROM EMPLOYEE WHERE DNO=5)
EXCEPT
(SELECT E.SSN FROM EMPLOYEE E, PROJECT P, WORKS_ON W WHERE P.PLOCATION='Bellaire' AND W.PNO=P.PNUMBER AND W.ESSN=E.SSN);

-- Q6
(SELECT FNAME FROM EMPLOYEE)
INTERSECT
(SELECT DEPENDENT_NAME FROM DEPENDENT);
