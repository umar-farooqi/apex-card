card data show

SELECT
    1 SL,
    '' ICON,
    TO_CHAR(NVL(TRIM(:P998_DEBIT_AMOUNT), 0), '999G999G999G999G999G999G990') AS "DR_AMOUNT",
    'DR Amount' Title
FROM DUAL;

---------------------------------------------------------------------------------------




SELECT 
    1 AS SL,
    'https://controlio.net/i/svg/brand-figure.svg' AS ICON,
    'TOTAL EMPLOYEES' AS TITLE,
    COUNT(*) AS TOTAL,
   APEX_PAGE.GET_URL(p_page => 17) AS URL
FROM EMPLOYEE 

UNION

SELECT 
    2 AS SL,
    'https://seeklogo.com/images/D/department-of-education-logo-110877A37C-seeklogo.com.png' AS ICON,
    'TOTAL DEPARTMENTS' AS TITLE,
    COUNT(*) AS TOTAL,
    APEX_PAGE.GET_URL(p_page => 10) AS URL
FROM DEPARTMENT;
