# autoassesment-programming

This is a set of tools to facilitate to the teacher the management of practice lessons in computer science subjets. The objective is to familiarizate students with common tools of programming such as Git repos and tools of CI/CD, like Jenkins. It also integrates the management with Github Classroom.

In this repo, you can find a set of scripts that interact directly with Jenkins and:
 * Create Users
 * Create Folders and subfolders
 * Create Roles (global and project)
 * Assing roles to users
 * Create Jobs
 * Create Views
 
Also, there are two main scripts that prepare the environment of a class:
 * registerStudents: this script receives a file that contains the Github accounts of the students and the number of assingments of the course, and creates the user in Jenkins and the neccessary folders and roles to each student.
   * Example of use: $ ./registerStudents_crumb.sh -f students -j http://jenkins.ip:8080 -a 3 -u admin -p admin1234 -c true
 * createTests: this script receives a file that contains the Github account of each student together with the URL of the repo of each assignment (automatically created by Github Classroom), the template of the test and the assingment to whom it corresponds. It creates for each student the corresponding job test in Jenkins properly allocated in the structure of folders previosuly created with the other script.
    * Example of use: $ ./createTests_crumb.sh -f student_repos -j http://jenkins.ip:8080 -a 1 -n ejercicio_test -t basic_template.xml -u admin -p admin1234 -c true
