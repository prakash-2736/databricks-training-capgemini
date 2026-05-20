-- Question 1
-- Use ROW_NUMBER() to assign a row number to employees ordered by salary descending.

select e.*,
  ROW_NUMBER() OVER (
        ORDER BY salary DESC
    ) AS row_number_rank
from employees e;


-- Question 2
-- Use RANK() to rank employees by salary.

select e.*,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
from employees e;


-- Question 3
-- Use DENSE_RANK() to rank employees by salary.

select e.*,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS dense_salary_rank
from employees e;


-- Question 4
-- Find the top 3 highest-paid employees using a window function.

select * from (
    select e.*,
        ROW_NUMBER() OVER (
            ORDER BY salary DESC
        ) AS rn from employees e
) ranked_employees
WHERE rn <= 3;


-- Question 5
-- Rank employees within each department using PARTITION BY.

select e.*, RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank from employees e;


-- Question 6
-- Display the highest salary in each department using a window function.

select e.*, MAX(salary) OVER (
        PARTITION BY department
    ) AS highest_department_salary from employees e;


-- Question 7
-- Calculate the running total of order amounts ordered by order_date.

select order_id,
    customer_id,
    employee_id,
    order_date,
    total_amount,

    SUM(total_amount) OVER (
        ORDER BY order_date
    ) AS running_total from orders;


-- Question 8
-- Calculate the cumulative sales amount for each employee.

select employee_id,
    order_id,
    order_date,
    total_amount,

    SUM(total_amount) OVER (
        PARTITION BY employee_id
        ORDER BY order_date
    ) AS cumulative_sales from orders;


-- Question 9
-- Use LAG() to show the previous order amount for each customer.

select customer_id,
    order_id,
    order_date,
    total_amount,

    LAG(total_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS previous_order_amount from orders;


-- Question 10
-- Use LEAD() to show the next order amount for each customer.

select customer_id,
    order_id,
    order_date,
    total_amount,

    LEAD(total_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS next_order_amount from orders;


-- question 11
-- Find the difference between the current order amount and previous order amount.
select customer_id,
    order_id,
    order_date,
    total_amount,
    total_amount -
    lag(total_amount) over (
        partition by customer_id
        order by order_date
    ) as amount_difference
from orders;

-- question 12
-- calculate a moving average of the last 3 orders.

select
    order_id,
    order_date,
    total_amount,
    avg(total_amount) over (
        order by order_date
        rows between 2 preceding and current row
    ) as moving_average
from orders;


-- question 13
-- use ntile(4) to divide employees into salary quartiles.

select employee_id, employee_name, salary,
    ntile(4) over (
        order by salary desc
    ) as salary_quartile
from employees;

-- question 14
-- find the first order placed by each customer using row_number().

select *
from (select o.*,
        row_number() over (
            partition by customer_id
            order by order_date
        ) as rn
    from orders o
) first_orders
where rn = 1;


-- question 15
-- find the latest order placed by each customer.

select *
from (select o.*, 
        row_number() over (
            partition by customer_id
            order by order_date desc
        ) as rn
    from orders o
) latest_orders
where rn = 1;

-- question 16
-- display employee salaries along with department average salary.

select
    employee_id,
    employee_name,
    department,
    salary, avg(salary) over (
        partition by department
    ) as department_average_salary
from employees;


-- question 17
-- find employees earning above their department average salary.

select *
from (
    select
        employee_id,
        employee_name,
        department,
        salary,

        avg(salary) over (
            partition by department
        ) as department_average_salary
    from employees
) emp
where salary > department_average_salary;


-- question 18
-- use sum() over(partition by department) to calculate department payroll.

select
    employee_id,
    employee_name,
    department,
    salary,

    sum(salary) over (
        partition by department
    ) as department_payroll
from employees;

-- question 19
-- find the percentage contribution of each employee salary within their department.

select
    employee_id,
    employee_name,
    department,
    salary,
    round( 
        salary * 100.0 /
        sum(salary) over (
            partition by department
        ),
        2
    ) as salary_percentage
from employees;


-- question 20
-- use count() over() to show total number of employees alongside each row.

select
    employee_id,
    employee_name,
    department,
    salary,
    count(*) over () as total_employees
from employees;
