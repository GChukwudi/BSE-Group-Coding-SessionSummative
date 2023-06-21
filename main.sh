#!/usr/bin/env bash
#building an application
students_file="students-list_0333.txt"

create_student() {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " student_id

    echo "$email $age $student_id" >> "$students_file"
    echo "Student record created."
}

view_students() {
	if [ -s "$students_file" ]; then
		cat $students_file
	else
		echo "No students found."
	fi
}
