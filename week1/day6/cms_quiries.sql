
-- Q1: List all students along with their department names.
select 
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa
from Student s
left join Department d on s.department_id = d.department_id
order by s.student_id;

-- Q2: Display all staff members and their department names, including staff without departments.
select 
    st.staff_id,
    st.staff_name,
    st.designation,
    d.department_name,
    st.salary
from Staff st
left join Department d on st.department_id = d.department_id
order by st.staff_id;

-- Q3: Find all departments that currently have no students assigned.
select 
    d.department_id,
    d.department_name,
    d.department_block_number
from Department d
left join Student s on d.department_id = s.department_id
where s.student_id is null
group by d.department_id, d.department_name, d.department_block_number;

-- Q4: Show students who do not have any marks recorded.
select 
    s.student_id,
    s.student_name,
    s.admission_year,
    d.department_name
from Student s
left join Department d on s.department_id = d.department_id
left join Mark m on s.student_id = m.student_id
where m.student_id is null
order by s.student_id;

-- Q5: Display subjects that are not assigned to any staff member.
select 
    subject_id,
    subject_name,
    subject_code,
    semester,
    credits
from Subject
where staff_id is null;

-- Q6: Find the average CGPA department-wise.
select 
    d.department_id,
    d.department_name,
    round(avg(s.cgpa), 2) as avg_cgpa,
    count(s.student_id) as student_count
from Department d
left join Student s on d.department_id = s.department_id
group by d.department_id, d.department_name
order by avg_cgpa desc nulls last;

-- Q7: Display departments where the average CGPA is greater than 8.0.
select 
    d.department_id,
    d.department_name,
    round(avg(s.cgpa), 2) as avg_cgpa
from Department d
left join Student s on d.department_id = s.department_id
group by d.department_id, d.department_name
having avg(s.cgpa) > 8.0
order by avg_cgpa desc;

-- Q8: Find the total number of students in each department.
select 
    d.department_id,
    d.department_name,
    count(s.student_id) as student_count
from Department d
left join Student s on d.department_id = s.department_id
group by d.department_id, d.department_name
order by student_count desc;

-- Q9: Display the highest and lowest marks scored in each subject.
select 
    subj.subject_id,
    subj.subject_name,
    max(m.marks) as highest_marks,
    min(m.marks) as lowest_marks,
    count(m.marks) as total_marks_recorded
from Subject subj
left join Mark m on subj.subject_id = m.subject_id
group by subj.subject_id, subj.subject_name
order by subj.subject_id;

-- Q10: Find students who scored more than 90 in any exam.
select distinct
    s.student_id,
    s.student_name,
    s.cgpa,
    max(m.marks) as highest_marks
from Student s
join Mark m on s.student_id = m.student_id
where m.marks > 90
group by s.student_id, s.student_name, s.cgpa
order by highest_marks desc;

-- Q11: Display the names of students who belong to the Computer Science department.
select 
    s.student_id,
    s.student_name,
    s.gender,
    s.city,
    s.cgpa
from Student s
where s.department_id = 1
order by s.student_id;

-- Q12: Find the number of subjects handled by each staff member.
select 
    st.staff_id,
    st.staff_name,
    st.designation,
    count(subj.subject_id) as subject_count
from Staff st
left join Subject subj on st.staff_id = subj.staff_id
group by st.staff_id, st.staff_name, st.designation
order by subject_count desc;

-- Q13: Display students along with the total marks they obtained across all subjects.
select 
    s.student_id,
    s.student_name,
    d.department_name,
    sum(m.marks) as total_marks,
    count(m.marks) as exam_count,
    round(avg(m.marks), 2) as avg_marks
from Student s
left join Department d on s.department_id = d.department_id
left join Mark m on s.student_id = m.student_id
group by s.student_id, s.student_name, d.department_name
order by total_marks desc nulls last;

-- Q14: Find departments with more than 2 staff members.
select 
    d.department_id,
    d.department_name,
    count(st.staff_id) as staff_count
from Department d
left join Staff st on d.department_id = st.department_id
group by d.department_id, d.department_name
having count(st.staff_id) > 2
order by staff_count desc;

-- Q15: Display students whose CGPA is above the average CGPA.
select 
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa,
    round((select avg(cgpa) from Student where cgpa is not null), 2) as avg_cgpa
from Student s
left join Department d on s.department_id = d.department_id
where s.cgpa > (select avg(cgpa) from Student where cgpa is not null)
order by s.cgpa desc;

-- Q16: Find staff members earning more than the average salary of their department.
with dept_avg_salary as (
    select 
        department_id,
        avg(salary) as dept_avg_salary
    from Staff
    where salary is not null
    group by department_id
)
select 
    st.staff_id,
    st.staff_name,
    d.department_name,
    st.salary,
    round(das.dept_avg_salary, 2) as dept_avg_salary
from Staff st
left join Department d on st.department_id = d.department_id
left join dept_avg_salary das on st.department_id = das.department_id
where st.salary is not null and st.salary > das.dept_avg_salary
order by st.salary desc;

-- Q17: Display the second highest salary among staff members.
select 
    staff_id,
    staff_name,
    designation,
    salary
from Staff
where salary is not null
order by salary desc
limit 1 offset 1;

-- Q18: Find students who scored the highest marks in each subject.
with subject_max_marks as (
    select 
        subject_id,
        max(marks) as max_marks
    from Mark
    group by subject_id
)
select 
    s.student_id,
    s.student_name,
    subj.subject_name,
    m.marks,
    m.exam_type
from Mark m
join subject_max_marks smm on m.subject_id = smm.subject_id and m.marks = smm.max_marks
join Student s on m.student_id = s.student_id
join Subject subj on m.subject_id = subj.subject_id
order by subj.subject_id;

-- Q19: Display all students and their marks, including students without marks.
select 
    s.student_id,
    s.student_name,
    d.department_name,
    subj.subject_name,
    m.exam_type,
    m.marks,
    m.exam_date
from Student s
left join Department d on s.department_id = d.department_id
left join Mark m on s.student_id = m.student_id
left join Subject subj on m.subject_id = subj.subject_id
order by s.student_id, m.exam_date;

-- Q20: Find subjects where the average marks are below 70.
select 
    subj.subject_id,
    subj.subject_name,
    subj.subject_code,
    round(avg(m.marks), 2) as avg_marks,
    count(m.marks) as total_marks_recorded
from Subject subj
left join Mark m on subj.subject_id = m.subject_id
group by subj.subject_id, subj.subject_name, subj.subject_code
having avg(m.marks) < 70
order by avg_marks;

-- Q21: Display students ordered by CGPA in descending order.
select 
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa,
    s.admission_year
from Student s
left join Department d on s.department_id = d.department_id
where s.cgpa is not null
order by s.cgpa desc;

-- Q22: Find the total salary expenditure department-wise.
select 
    d.department_id,
    d.department_name,
    round(sum(st.salary), 2) as total_salary,
    count(st.staff_id) as staff_count
from Department d
left join Staff st on d.department_id = st.department_id
group by d.department_id, d.department_name
order by total_salary desc nulls last;

-- Q23: Display departments where the total salary exceeds 200000.
select 
    d.department_id,
    d.department_name,
    round(sum(st.salary), 2) as total_salary,
    count(st.staff_id) as staff_count
from Department d
left join Staff st on d.department_id = st.department_id
group by d.department_id, d.department_name
having sum(st.salary) > 200000
order by total_salary desc;

-- Q24: Find students admitted after 2021 and having CGPA above 7.5.
select 
    s.student_id,
    s.student_name,
    d.department_name,
    s.admission_year,
    s.cgpa
from Student s
left join Department d on s.department_id = d.department_id
where s.admission_year > 2021 and s.cgpa > 7.5
order by s.cgpa desc;

-- Q25: Display the number of students admitted each year.
select 
    admission_year,
    count(student_id) as student_count
from Student
where admission_year is not null
group by admission_year
order by admission_year desc;


-- Q26: Find the city with the maximum number of students.
select 
    city,
    count(student_id) as student_count
from Student
where city is not null
group by city
order by student_count desc
limit 1;


-- Q27: Display all departments and their staff count, including empty departments.
select 
    d.department_id,
    d.department_name,
    count(st.staff_id) as staff_count
from Department d
left join Staff st on d.department_id = st.department_id
group by d.department_id, d.department_name
order by staff_count desc;


-- Q28: Find students who have failed in at least one subject (marks < 50).
select distinct
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa
from Student s
left join Department d on s.department_id = d.department_id
join Mark m on s.student_id = m.student_id
where m.marks < 50
order by s.student_id;


-- Q29: Display staff hired before 2018.
select 
    staff_id,
    staff_name,
    designation,
    hire_date,
    d.department_name,
    salary
from Staff st
left join Department d on st.department_id = d.department_id
where year(hire_date) < 2018
order by hire_date;


-- Q30: Find departments where no staff salary is recorded as NULL.
select 
    d.department_id,
    d.department_name,
    count(st.staff_id) as staff_count
from Department d
left join Staff st on d.department_id = st.department_id
group by d.department_id, d.department_name
having count(case when st.salary is null then 1 end) = 0
order by staff_count desc;


-- Q31: Assign a row number to students ordered by CGPA.
select 
    row_number() over (order by s.cgpa desc nulls last) as row_num,
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa
from Student s
left join Department d on s.department_id = d.department_id;


-- Q32: Rank students based on their CGPA.
select 
    rank() over (order by s.cgpa desc nulls last) as cgpa_rank,
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa
from Student s
left join Department d on s.department_id = d.department_id
where s.cgpa is not null;


-- Q33: Display dense rank of staff salaries.
select 
    dense_rank() over (order by st.salary desc nulls last) as salary_dense_rank,
    st.staff_id,
    st.staff_name,
    d.department_name,
    st.salary
from Staff st
left join Department d on st.department_id = d.department_id
where st.salary is not null;


-- Q34: Find the top 3 highest scoring students.
with student_avg_marks as (
    select 
        s.student_id,
        s.student_name,
        d.department_name,
        round(avg(m.marks), 2) as avg_marks
    from Student s
    left join Department d on s.department_id = d.department_id
    join Mark m on s.student_id = m.student_id
    group by s.student_id, s.student_name, d.department_name
)
select * 
from student_avg_marks
order by avg_marks desc
limit 3;


-- Q35: Display running total of marks for each student (cumulative sum).
select 
    s.student_id,
    s.student_name,
    subj.subject_name,
    m.marks,
    m.exam_date,
    sum(m.marks) over (partition by s.student_id order by m.exam_date) as running_total
from Student s
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
order by s.student_id, m.exam_date;

-- Q36: Find the average marks for each subject.
select
    subj.subject_id,
    subj.subject_name,
    round(avg(m.marks), 2) as subject_avg_marks,
    count(m.marks) as marks_count
from Subject subj
left join Mark m on subj.subject_id = m.subject_id
group by subj.subject_id, subj.subject_name
order by subj.subject_id;

-- Q37: Display previous exam marks for each student using LAG().
select 
    s.student_id,
    s.student_name,
    m.exam_date,
    subj.subject_name,
    m.marks,
    lag(m.marks) over (partition by s.student_id order by m.exam_date) as previous_marks
from Student s
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
order by s.student_id, m.exam_date;

-- Q38: Display next exam marks for each student using LEAD().
select 
    s.student_id,
    s.student_name,
    m.exam_date,
    subj.subject_name,
    m.marks,
    lead(m.marks) over (partition by s.student_id order by m.exam_date) as next_marks
from Student s
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
order by s.student_id, m.exam_date;

-- Q39: Find the highest marks within each subject.
select 
    subj.subject_id,
    subj.subject_name,
    s.student_id,
    s.student_name,
    m.marks,
    max(m.marks) over (partition by subj.subject_id) as subject_max_marks
from Student s
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
order by subj.subject_id, m.marks desc;

-- Q40: Display cumulative average marks ordered by exam date.
select 
    s.student_id,
    s.student_name,
    m.exam_date,
    subj.subject_name,
    m.marks,
    round(avg(m.marks) over (partition by s.student_id order by m.exam_date), 2) as cumulative_avg
from Student s
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
order by s.student_id, m.exam_date;

-- Q41: Find the first student admitted in each department.
with ranked_students as (
    select 
        d.department_id,
        d.department_name,
        s.student_id,
        s.student_name,
        s.admission_year,
        row_number() over (partition by d.department_id order by s.admission_year asc, s.student_id asc) as admission_order
    from Department d
    left join Student s on d.department_id = s.department_id
)
select * from ranked_students
where admission_order = 1;

-- Q42: Display the latest hired staff member in each department.
with staff_ranking as (
    select 
        d.department_id,
        d.department_name,
        st.staff_id,
        st.staff_name,
        st.hire_date,
        row_number() over (partition by d.department_id order by st.hire_date desc nulls last) as hire_order
    from Department d
    left join Staff st on d.department_id = st.department_id
)
select * from staff_ranking where hire_order = 1;


-- Q43: Divide students into 4 groups (quartiles) based on CGPA.
select 
    ntile(4) over (order by s.cgpa desc nulls last) as cgpa_quartile,
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa
from Student s
left join Department d on s.department_id = d.department_id
where s.cgpa is not null
order by cgpa_quartile, s.cgpa desc;


-- Q44: Find percentage rank of students based on CGPA (0 to 1 scale).
select 
    s.student_id,
    s.student_name,
    d.department_name,
    s.cgpa,
    round(100 * count(*) over (order by s.cgpa) / count(*) over(), 2) as percentile_rank
from Student s
left join Department d on s.department_id = d.department_id
where s.cgpa is not null
order by s.cgpa desc;


-- Q45: Show salaries ordered from highest to lowest with row number.
select 
    st.staff_id,
    st.staff_name,
    d.department_name,
    st.salary,
    row_number() over (order by st.salary desc) as salary_rank,
    round(100 * st.salary / sum(st.salary) over(), 2) as percentage_of_total
from Staff st
left join Department d on st.department_id = d.department_id
where st.salary is not null
order by st.salary desc;


-- Q46: Find subjects where a student's marks are above the subject average.
with subject_avg as (
    select 
        subject_id,
        round(avg(marks), 2) as avg_marks
    from Mark
    group by subject_id
)
select 
    s.student_id,
    s.student_name,
    subj.subject_name,
    m.marks,
    sa.avg_marks,
    round(m.marks - sa.avg_marks, 2) as above_average_by
from Student s
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
join subject_avg sa on subj.subject_id = sa.subject_id
where m.marks > sa.avg_marks
order by subj.subject_id, m.marks desc;


-- Q47: Find departments with above-average staff salary.
with dept_salary_calc as (
    select 
        d.department_id,
        d.department_name,
        round(avg(st.salary), 2) as dept_avg_salary,
        count(st.staff_id) as staff_count
    from Department d
    left join Staff st on d.department_id = st.department_id
    where st.salary is not null
    group by d.department_id, d.department_name
)
, overall_calc as (
    select round(avg(salary), 2) as overall_avg_salary
    from Staff
    where salary is not null
)
select 
    dsc.department_id,
    dsc.department_name,
    dsc.dept_avg_salary,
    oc.overall_avg_salary,
    round(dsc.dept_avg_salary - oc.overall_avg_salary, 2) as salary_difference,
    dsc.staff_count
from dept_salary_calc dsc, overall_calc oc
where dsc.dept_avg_salary > oc.overall_avg_salary
order by dsc.dept_avg_salary desc;


-- Q48: Display students who scored above their department average marks.
with dept_avg_marks as (
    select 
        d.department_id,
        round(avg(m.marks), 2) as dept_avg_marks
    from Department d
    left join Student s on d.department_id = s.department_id
    left join Mark m on s.student_id = m.student_id
    group by d.department_id
)
select 
    s.student_id,
    s.student_name,
    d.department_name,
    subj.subject_name,
    m.marks,
    dam.dept_avg_marks,
    round(m.marks - dam.dept_avg_marks, 2) as above_dept_avg_by
from Student s
join Department d on s.department_id = d.department_id
join Mark m on s.student_id = m.student_id
join Subject subj on m.subject_id = subj.subject_id
join dept_avg_marks dam on d.department_id = dam.department_id
where m.marks > dam.dept_avg_marks
order by d.department_id, m.marks desc;


-- Q49: Find the 3rd highest mark and show which students achieved it.
with distinct_marks as (
    select distinct m.marks
    from Mark m
    where m.marks is not null
    order by m.marks desc
    limit 1 offset 2
)
select 
    s.student_id,
    s.student_name,
    subj.subject_name,
    m.marks,
    'This is the 3rd highest mark' as mark_position
from Mark m
join Student s on m.student_id = s.student_id
join Subject subj on m.subject_id = subj.subject_id
join distinct_marks dm on m.marks = dm.marks
order by s.student_id;

-- Q50: Generate a comprehensive report with marks, averages, and rankings.
with dept_avg_calc as (
    select 
        department_id,
        round(avg(m.marks), 2) as dept_avg_marks
    from Student s
    left join Mark m on s.student_id = m.student_id
    group by department_id
),
overall_avg_calc as (
    select round(avg(marks), 2) as overall_avg_marks
    from Mark
    where marks is not null
)
select 
    s.student_id,
    s.student_name,
    d.department_name,
    subj.subject_name,
    m.exam_type,
    m.marks,
    dac.dept_avg_marks,
    oac.overall_avg_marks,
    rank() over (partition by d.department_id order by m.marks desc) as dept_rank,
    rank() over (order by m.marks desc) as overall_rank
from Student s
left join Department d on s.department_id = d.department_id
left join Mark m on s.student_id = m.student_id
left join Subject subj on m.subject_id = subj.subject_id
left join dept_avg_calc dac on d.department_id = dac.department_id
cross join overall_avg_calc oac
where m.marks is not null
order by d.department_name, m.marks desc;
