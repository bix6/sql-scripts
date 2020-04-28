1. How many people work in Sales? 4
```
SELECT
    COUNT(e.emp_name),
    d.dept_name
FROM
    employee e
    JOIN
    department d
    ON
        e.department = d.id
GROUP BY d.dept_name;
```
2. List the names of all employees assigned to the 'Plan Christmas party' project: Toby Flenderson
```
SELECT
    e.emp_name as employee,
    p.project_name as project
FROM
    employee e
    JOIN
    employee_project ep
    ON
        e.id = ep.emp_id
    JOIN
    project p
    ON
        ep.project_id = p.id
WHERE
    p.project_name = 'Plan christmas party';
```
3. List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project: Nobody
```
SELECT
    e.emp_name as employee,
    d.dept_name as department,
    p.project_name as project
FROM
    employee e
    JOIN
    employee_project ep
    ON
        e.id = ep.emp_id
    JOIN
    project p
    ON
        ep.project_id = p.id
    JOIN
    department d
    ON
        e.department = d.id
WHERE
    d.dept_name = 'Warehouse'
    AND
    p.project_name = 'Watch paint dry';
```
4. Which projects are the Sales department employees assigned to? Watch paint dry
```
SELECT
    e.emp_name as employee,
    d.dept_name as department,
    p.project_name as project
FROM
    employee e
    JOIN
    employee_project ep
    ON
        e.id = ep.emp_id
    JOIN
    project p
    ON
        ep.project_id = p.id
    JOIN
    department d
    ON
        e.department = d.id
WHERE
    d.dept_name = 'Sales';
```
5. List only the managers that are assigned to the 'Watch paint dry' project: Jim Halpert
```
SELECT
    e.emp_name as employee,
    d.dept_name as department,
    p.project_name as project
FROM
    employee e
    JOIN
    employee_project ep
    ON
        e.id = ep.emp_id
    JOIN
    project p
    ON
        ep.project_id = p.id
    JOIN
    department d
    ON
        e.department = d.id
WHERE
    d.manager = e.id
    AND
    p.project_name = 'Watch paint dry';
```