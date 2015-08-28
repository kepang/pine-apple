# Requirement Document #
Revised July 2,2009
## Table of Contents ##

  * 1.0 Introduction
  * 2.0 Intended Audience
  * 3.0 Features
    * 3.1 Client
      * 3.1.1 User Interface Guideline
      * 3.1.2 Functional Requirements
    * 3.2 Server
      * 3.2.1 User Interface Guideline
      * 3.2.2 Functional Requirements
  * 4.0 Non-Functional Requirements
    * 4.1 Speed
    * 4.2 Ease of Use
    * 4.3 Reliability
    * 4.4 Robustness
    * 4.5 Portability
  * 5.0 Example Tutorials
    * 5.1 Client
    * 5.2 Server
  * 6.0 Glossary

## 1.0 Introduction ##

iClicky is an application designed for iPhone/ iTouch mobile devices. It is designed to be used in classrooms as a way to quiz students during lectures as well as being able to take attendance. iClicky will have 5 multiple choice buttons that will be used to select an answer to a question displayed by the application. It will also have the ability to register a student account to the device so the instructor has the ability to view each student’s mark. This is also to prevent students from being able to change accounts in the middle of a quiz (this would most likely be done by someone who plans to write quizzes for multiple students).  The results are recorded onto an online database where the instructor has the ability to view students marks, add students to specific classes, and create passwords for each lecture to ensure only those who attend lecture will be able to do the quiz.

## 2.0 Intended Audience ##

The intended audiences of the application are students and instructors, mainly university students and their instructors.

**Assumed Experience**

The users of the iClicky must have basic knowledge of computers and using the iPhone
  * Instructors and students have used a computer with a mouse and keyboard
  * Instructors have used the internet
  * Instructors and students have used iPhone

**Assumed Expertise**

  * Students expertise in using iPhone
  * Instructors being able to maintain the class content and schedule

**Assumed Goal**

The purpose of using iClicky is to maintain flexibility for students and instructors with participating and managing the class.
  * Instructors are able to take attendance
  * Instructors are able to make quizzes
  * Students are able to get the quizzes result immediately.

## 3.0 Features ##

The feature list is categorized into two main groups:
  * Client Functionality
  * Server Functionality
Within these two groups, the feature list is again divided into a short section on User Interface guidelines and a much more comprehensive section on Functional Requirements.

### 3.1	Client ###

#### 3.1.1 User Interface Guideline ####

Here is a summary of what the client-side user interface should look like.  This should be regarded as a guideline only

http://pine-apple.googlecode.com/files/guideline1.PNG
#### 3.1.2 Functional Requirements ####

  * One time user information
    * When iClicky is opened for the first time a form is displayed where the user enters his/her information which is saved into the application to prevent users from being able to change information (for students who plan on cheating). As a failsafe, encase incorrect information is entered, the user may remove the application from their device and reinstall it allowing for information to be re-entered.  One iPhone/iTouch app will only have one user. This is to prevent students to sign in as different people.

  * Lecture login
    * Lecture login is used as a way to see who is actually in the lecture because login cannot occur without the lecture password. One of the shortcut tabs at the bottom of screen will be dedicated to logging into the lecture.
    * A password is set up for each quiz to prevent students who did not physically attend the lecture from being able to do the quiz. This feature is necessary because for iClicky to connect to the database all that is needed is an internet connection.

  * Quiz
    * The quiz being conducted by the instructor will be displayed in iClicky. This is the main function of the client. One of the shortcut tabs at the bottom of screen will be dedicated to the quiz. The quiz`s main aspect will be the multiple choice buttons used to key in an answer to a question.

  * Display Completed Quizzes
    * Allows the user to select a previously written quiz and view the score and the class average. To view a previously written quiz all the user need to do is select the class from the drop down menu as well as which quiz the user wishes to view.

  * Help
    * An area dedicated to help users with the iClicky application. One of the shortcut tabs at the bottom of screen will be dedicated to help. In the help tab a list of all the tutorials dedicated to the iClicky client will be linked for easy reference for the user. The links will open safari and take them to the selected tutorial. There will also be a report bug’s link.

### 3.2 Server ###

#### 3.2.1 User Interface Guideline ####

Here is a summary of what the server-side user interface should look like.  This should be regarded as a guideline only.

http://pine-apple.googlecode.com/files/guideline2.PNG

#### 3.1.2 Functional Requirements ####

  * User Manager
  * Class Manager
  * Lecture Manager
  * Quiz Manager
  * Attendance Recorder
  * Display Results

## 4.0 Non-Functional Requirements ##
The non-functional requirements of the iClicky system cover five categories.  They are speed, ease of use, reliability, robustness, and portability.  These requirements are applied across all functional requirements in order to support performance, usability, and quality across the entire system.  Methodology for testing non-functional requirements will be outlined in the QA Plan document.

### 4.1 Speed ###
The response time of the system will be comparable with the response time of web browsing when using network related features of iClicky (server).

  * The system will respond within 5 seconds to the user’s requests 90% of the time under normal network conditions.

When using iPhone related features, the response time will be comparable with existing iPhone applications.

  * The system will respond in less than two seconds unless the feature is processing of large amounts of data.

### 4.2 Ease of Use ###
The User Interface for the entire system will be easy to use with a minimal learning curve.  The client UI should be consistent with existing applications already available for iPhone to avoid “re-learning” of new UI conventions.  Additionally, each screen from the server and client will remain uncluttered, and the functions / commands will be clear and grouped where applicable.

  * The average computer user will understand the UI reasonably well after no more than 3 iterations of use in each screen or page.

### 4.3 Reliability ###
The reliability metrics of the system will be as follows:
  * The system will be up 24 hours per day, 7 days per week.  Exceptions may be made for standard server maintenance, such as OS updates or security fixes.
  * The system will not crash 9 times out of 10.  Each usage scenario or use case will be defined as 1 time.
  * The average time between failures (crashes) will be greater than 5 hours.

### 4.4 Robustness ###
  * The percentage of events causing failure will be fewer than 5%.  An event is defined as a user action (click) on a link or button.

### 4.5 Portability ###
Target systems on the client side include the iPhone and iPod Touch.  The server will targeted to a machine with Apache web server, mySQL DB server, and PHP interpreter installed.

## 5.0 Example Tutorials ##

### Client ###

  * [Tutorial #1: Opening application for the first time and registering an account](http://code.google.com/p/pine-apple/wiki/iphonetutorial1)
  * [Tutorial #2: Using iClicky for a Quiz](http://code.google.com/p/pine-apple/wiki/iphonetutorial2)
  * [Tutorial #3: View previously done quizzes](http://code.google.com/p/pine-apple/wiki/iphonetutorial3)
  * [Tutorial #4: Tutorials and Extras](http://code.google.com/p/pine-apple/wiki/iphonetutorial4)

### Server ###

  * [Tutorial #1: Checking Attendance](http://code.google.com/p/pine-apple/wiki/CheckAttendance)
  * [Tutorial #2: Class Statistics](http://code.google.com/p/pine-apple/wiki/ClassStatistic)
  * [Tutorial #3: Edit Lecture](http://code.google.com/p/pine-apple/wiki/EditLecture)
  * [Tutorial #4: Make a Lecture](http://code.google.com/p/pine-apple/wiki/MakeLecture)
  * [Tutorial #5: Make a Quiz Question](http://code.google.com/p/pine-apple/wiki/MakeQuiz)
  * [Tutorial #6: Manage Student](http://code.google.com/p/pine-apple/wiki/ManageStudent)
  * [Tutorial #7: Register Admin Account](http://code.google.com/p/pine-apple/wiki/RegisterAccountAdmin)

## 6.0 Glossary ##

Link to [Glossary](http://code.google.com/p/pine-apple/wiki/Glossary)