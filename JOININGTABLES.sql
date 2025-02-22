SELECT * 
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT dem.employee_id , age , occupation 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT * 
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id +1 = emp2.employee_id
;


SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON pd.department_id = sal.dept_id
;



title LMS Data Model

// Admins table
admins [icon: shield, color: red]{
  id string pk
  username string
  email string
  password string
  created_at timestamp
}

// Teachers table
teachers [icon: user, color: blue]{
  id string pk
  name string
  email string
  salary number
  performance_metric string
  created_at timestamp
}

// Students table
students [icon: users, color: green]{
  id string pk
  name string
  email string
  fee_status string
  progress text
  attendance_summary text
  achievements text
  teacher_id string
  created_at timestamp
}

// Subjects table
subjects [icon: book, color: orange]{
  id string pk
  name string
  description text
}

// Courses table
courses [icon: book-open, color: lightblue]{
  id string pk
  title string
  description text
  teacher_id string
  subject_id string
  status string
  created_at timestamp
}

// StudentCourses join table (Many-to-Many between students and courses)
studentcourses [icon: link, color: grey]{
  id string pk
  student_id string
  course_id string
  enrollment_date timestamp
}

// Quizzes table
quizzes [icon: copy, color: teal]{
  id string pk
  title string
  course_id string
  total_marks number
  duration number
  created_at timestamp
}

// Assignments table
assignments [icon: file-text, color: purple]{
  id string pk
  title string
  course_id string
  description text
  due_date timestamp
  created_at timestamp
}

// AssignmentSubmissions table
assignmentsubmissions [icon: upload, color: grey]{
  id string pk
  assignment_id string
  student_id string
  submission_text text
  submitted_at timestamp
  score number
  feedback text
}

// StudyMaterials table
studymaterials [icon: file, color: teal]{
  id string pk
  title string
  course_id string
  material_type string
  content text
  created_at timestamp
}

// FeePayments table
feepayments [icon: credit-card, color: gold]{
  id string pk
  student_id string
  amount number
  payment_date timestamp
  status string
}

// StudentAttendance table
studentattendance [icon: check-square, color: green]{
  id string pk
  student_id string
  course_id string
  attendance_date timestamp
  status string
}

// TeacherAttendance table
teacherattendance [icon: check-circle, color: blue]{
  id string pk
  teacher_id string
  attendance_date timestamp
  status string
}

// QuizResults table
quizresults [icon: bar-chart, color: navy]{
  id string pk
  student_id string
  quiz_id string
  score number
  taken_at timestamp
}

// DoubtQueries table
doubtqueries [icon: help-circle, color: orange]{
  id string pk
  student_id string
  teacher_id string
  question text
  answer text
  is_ai_assisted boolean
  created_at timestamp
}

// LectureSessions table
lecturesessions [icon: video, color: red]{
  id string pk
  teacher_id string
  course_id string
  session_title string
  start_time timestamp
  end_time timestamp
  is_live boolean
  video_metadata text
}

// Notifications table
notifications [icon: bell, color: yellow]{
  id string pk
  admin_id string
  title string
  message text
  created_at timestamp
}

// PlatformAnalytics table
platformanalytics [icon: activity, color: grey]{
  id string pk
  metric_name string
  value number
  recorded_at timestamp
}

// AINotes table
ainotes [icon: file-plus, color: lightgreen]{
  id string pk
  course_id string
  student_id string
  note_content text
  generated_at timestamp
}

// AIInsights table
aiinsights [icon: lightbulb, color: goldenrod]{
  id string pk
  student_id string
  insight text
  generated_at timestamp
}

// TeacherFeedback table
teacherfeedback [icon: message-square, color: violet]{
  id string pk
  teacher_id string
  admin_id string
  feedback text
  rating number
  feedback_date timestamp
}

// AIQuestionAnswers table
aiquestionanswers [icon: cpu, color: pink]{
  id string pk
  question text
  answer text
  course_id string
  generated_at timestamp
}

// Relationships

// StudentCourses join relationships (Many-to-Many between students and courses)
studentcourses.student_id > students.id
studentcourses.course_id > courses.id

// Courses relationships
courses.teacher_id > teachers.id
courses.subject_id > subjects.id

// One-to-Many between Teachers and Students (Advisor relationship)
students.teacher_id > teachers.id

// Quizzes
quizzes.course_id > courses.id

// Assignments
assignments.course_id > courses.id

// AssignmentSubmissions
assignmentsubmissions.assignment_id > assignments.id
assignmentsubmissions.student_id > students.id

// StudyMaterials
studymaterials.course_id > courses.id

// FeePayments
feepayments.student_id > students.id

// StudentAttendance
studentattendance.student_id > students.id
studentattendance.course_id > courses.id

// TeacherAttendance
teacherattendance.teacher_id > teachers.id

// QuizResults
quizresults.student_id > students.id
quizresults.quiz_id > quizzes.id

// DoubtQueries
doubtqueries.student_id > students.id
doubtqueries.teacher_id > teachers.id

// LectureSessions
lecturesessions.teacher_id > teachers.id
lecturesessions.course_id > courses.id

// Notifications
notifications.admin_id > admins.id

// AINotes
ainotes.course_id > courses.id
ainotes.student_id > students.id

// AIInsights
aiinsights.student_id > students.id

// TeacherFeedback
teacherfeedback.teacher_id > teachers.id
teacherfeedback.admin_id > admins.id

// AIQuestionAnswers
aiquestionanswers.course_id > courses.id
