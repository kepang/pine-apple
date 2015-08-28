# Design and Feature Document #
Revised July 2, 2009

## Guidelines ##
### Software Guidelines ###
  * Some code will be developed using Iphone software developement kit (iphone SDK) XCode
  * Some code will be developed using web scripting language (PHP) with the phpEclipse IDE
  * All code, pictures and versions of the software will be uploaded into team pine-apple Google Code Subversion repository
  * Libraries in the iPhone SDK will be used
  * Database will be implemented using mySQL
  * All iPhone/iTouch will need to have firmware 2.0 or above

  * All computers will require internet explorer 7 or above, Firefox 2.0 or above, Safari 3.0 or above

### Ethical and Legal Issues ###
  * All information regarding all users will be kept highly confidential. The information that will be released to the public are the user’s scores, class average and usernames. Other information such as grade, e-mail, student ID may be accessed only by an account's owner and administrators.

  * iClicky will be developed using libraries under open source licenses.

## System Diagrams ##
### Sequence Diagram ###


_Sample of a quiz_

http://pine-apple.googlecode.com/files/sampleofaquiz.PNG

_Sample of display completed Quizzes_

http://pine-apple.googlecode.com/files/samplecompletequiz.PNG

![http://pine-apple.googlecode.com/files/Topology%20diagram.jpg](http://pine-apple.googlecode.com/files/Topology%20diagram.jpg)

_ER Diagram_

![http://pine-apple.googlecode.com/files/ER%20Diagram.png](http://pine-apple.googlecode.com/files/ER%20Diagram.png)

## Data Requirements ##
### File Formats ###
  * .tif, .jpg, .jpeg, .png - A combination of jpeg and png files will be used for images in iPhone/iTouch. Jpeg files to help keep our application file size to a minimum. Png files to utilize the transparency layer.
  * .php (dynamic web pages extension) - We will be using PHP for our server

  * Iphone sdk extensions – we will be coding the iPhone/iTouch application with iPhone SDK

  * .myd, .myi – we will be using mySQL to implement our database to store all the information

### Inputs ###
  * iClicky will require inputs from iPhone/iTouch for the client part

  * The User for I-Clicky website will use the mouse and the keyboard to interact with the program. Every feature in the I-Clicky website can only be used via mouse and keyboard


## Feature Priority ##
### Server (Version 1) ###
The concentration of the version 1 will be to allow the user to use some basic features of the I-Clicky, and to see the basic idea of the system.
Version 1 will be the combination of all main and basic factors of the feature.

#### 1. User Manager(student) ####
Manage Student is a feature that allow the student user to input their name, student number, and email so that the system will be able to save his or her records into the database according to the right source.

#### 2. Class Manager ####
Class Manager will be used to manage and edit a certain class, the basic features of class manager is to edit the class name and the number of lectures to be created in that certain class, and to select student into the class. In version 1, we will focus on the first 2 features.

#### 3. Lecture Manager ####
Lecture Managers is a feature that allows the Admin user, instructor, to edit and create lecture for his or her class. The main factor for this feature is to provide password for this certain lecture the instructor made. This password is going to be used to take the attendance of the user. For version 1, we will be able to allow the admin to input the password for any particular lectures.

#### 4. Quiz Manager ####
Quiz Manager is the one of the most important feature of I-Clicky which is to create quiz questions and to record the result for the quiz of each student. To create a quiz, the system will provide the user a form to be filled in such as the question form and the multiple choice form. Furthermore, the result of the quiz will be recorded according to the answer that is given by the student user from his I-Phone, and those results will be saved in the database. For version 1, the recording result will be the first concentration.

#### 5. Attendance Recorder ####
Attendance Recorder is a feature that is being used to keep track the student attendance. The system will take the attendance of the student if the user input the right password for the certain class lecture that has been provided by the instructor.

#### 6. Display Result ####
Display Result is used to display the statistic of a certain class. The main two factors are to display the student attendance and to display the quiz result. Displaying student attendance is differed into 2 factors, attendance filtered by lecture and the attendance filtered by student. The same thing goes to the displaying student quiz results. It can be filtered by the lecture, user, and the lecture. For version 1, the concentration will be to display all the statistics, except the student attendance displayed filtered by student, using numbers

### Server (Version 2) ###
More implementation will be created in version 2. For all the features that has been created

#### 1. User Manager (student) ####
The improvement for this feature is to make sure that student is able to add, edit, and delete the account.

#### 2. User Manager (Admin) ####
User Manager for admin is similar to the user manager for student; this feature is used for the user to create an account on I-Clicky. Admin Manager has more form to be filled in such as the username, password, job, name, email, city, and school. Those profiles are necessary so, the students are able to contact the instructor. For version 2, we will concentrate on creating the basic idea of the admin manager.

#### 3. Class Manager ####
In version 2, Class Manager feature will be able to add and remove student from particular class. Furthermore, the user will be able to manage the class perfectly such as add, edit and delete.

#### 4. Lecture Manager ####
The Lecture Manager in version 2 will be able to start and close a certain lecture, this function is used so that the system knows when to start and stop recording the data. Moreover, the admin user is allowed to add, edit, and delete the lecture.

#### 5. Quiz Manager ####
The Quiz Manager improvement is to allow the admin user to create a quiz question instead of just recording the student result. I-Clicky provides a multiple choices question. So, the user must input the question and multiple answers to be selected by students. Add, edit, and delete options will also be implemented in this version.

#### 6. Display Result ####
The improvement for this feature is to display the attendance filtered by student.

### Server (Version 3) ###
Version 3 will be the final product of I-Clicky, the system has to be able to provide every features that have been planned. In addition, The system will have a good layout and interfaces.

#### 1. User Manager ####
User Manager will have its full functionality which are the users, students and instructor, are able to create and manage their accounts.

#### 2. Class Manager ####
Make sure that every options in the Class Manager work perfectly fine.

#### 3. Lecture Manager ####
Check if there is any mistake in the feature, and make it works perfectly

#### 4. Quiz Manager ####
Make sure that Quiz Manager feature is able to create quiz question, and get the quiz result.

#### 5. Display Result ####
The system will be able to display every statistic using a graph instead of just using number. Furthermore, the feature must have its full functionality.

_Server Feature List_

![http://pine-apple.googlecode.com/files/server%20featurelist.jpg](http://pine-apple.googlecode.com/files/server%20featurelist.jpg)


### Client (Version 1) ###

#### 1. Login ####
One time user login - The user will only have to enter their information into the phone once. The phone will record the data that is entered

#### 2. Quiz ####
Select class – Select the class that the user wants to do the quiz for
Password – Enters the password for the lecture in order to gain access to quiz and takes the attendence for the class

#### 3. Help ####
Report Bugs – Allows user to send report on any bugs found on the application
Tutorials – Simple instructions that teaches the user how to operate the application

#### 4. About ####
Version – Displays the current version of the application

### Client (Version 2) ###

#### 1. Quiz ####
Do Quiz - Allows user to do the quiz with five multipe choices and one submit

#### 2. About ####
Information – Displays the information about the developers

### Client (Version 3) ###

#### 1. Display Completed Quizzes ####
Select class – Select the class that the user want to view score and average on
Select quiz – Select which quiz inside the class that the user want to view score and average on
Score – Displays the score for the specific quiz
Average -  Displays the class average for the specific quiz


_Client Feature List_

![http://pine-apple.googlecode.com/files/client%20featurelist.jpg](http://pine-apple.googlecode.com/files/client%20featurelist.jpg)