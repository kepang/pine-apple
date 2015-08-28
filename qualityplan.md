# Quality Plan #
Revised July 2, 2009
## 1) Test Case Tools and Test Case Management ##

In this section, the necessary test tools for automated testing will be outlined as well as the test coverage.  Coverage is divided into four categories and details are which are described in the appropriate section.

### Unit Testing ###

Automated iPhone unit testing will be performed with OCUnit, which is written by Sen:te and integrated with XCode.  However, special configuration work is needed to get it to run properly with the iPhone SDK.  The details are provided in this link: http://www.sente.ch/s/?p=535&lang=en.
Simpletest is an open source unit test framework for PHP.  As such, it is ideal for automated unit testing of the web server application in the iClicky system.  More information can be found on their website at http://www.simpletest.org/.

### Feature Testing ###

Feature testing for both the client and server will be performed manually.  The test cases will be based upon the feature list in order to verify functionality of the client and server applications completely.  As such, coverage will include the following features:

_Client_

  * 1.	One time user information
  * 2.	Lecture login
    * 2.1	Automated attendance recording

  * 3.	Quiz
    * 3.1   Display Question
    * 3.2    Submit Button
  * 4.	Display Completed Quizzes
  * 5.	Help
    * 5.1   Report Bugs

_Server_

  * 1.	User Manager
    * 1.1	Manage Admin Account
      * 1.1.1  Username
      * 1.1.2  Password
      * 1.1.3  Name
      * 1.1.4  Email
      * 1.1.5  City
      * 1.1.6  School
      * 1.1.7  Job
    * 1.2	Manage Student Accounts
      * 1.2.1  Student
      * 1.2.2  Name
      * 1.2.3  Email
  * 2.	Class Manager
    * 2.1	Manage Classes
      * 2.1.1  Class Name
      * 2.1.2  Number of Lectures
    * 2.2	Select Students
  * 3.	Lecture Manager
    * 3.1	Manage Lecture
      * 3.1.1	Set Lecture Password
      * 3.1.2	Start Lecture
      * 3.1.3	Stop Lecture
  * 4.	Quiz Manager
    * 4.1	Manage Quizzes
      * 4.1.1	Set Question
      * 4.1.2	Receive Result from Client
  * 5.	Attendance Recorder
  * 6.	Display Results
    * 6.1	Attendance Results filtered by Lecture
    * 6.2	Attendance Results filtered by Student
    * 6.3	Quiz Scores filtered by Lecture
    * 6.4	Quiz Scores filtered by Student
    * 6.5	Quiz Results filtered by Question

### System Testing ###

System Testing will cover the cases where there is communication between a) the client and server and b) server and database.  Indeed, feature testing does overlap with system testing, and much of the system testing needs will be satisfied by feature level tests.  Consequently, those use cases scenarios and tests that are covered by both categories of testing will only need to be performed once.  The remaining will be performed solely as a system level test.

### Non-Functional Testing ###

Non-Functional testing will cover the five categories outlined in the Non-Functional requirements.  As these requirements are applied across the entire system, a set of test cases will be derived from Feature and System testing and repeated various times in various orders to simulate real world use.  This will ensure that the system is verified against speed, ease of use, reliability, robustness, and portability requirements.

## 2) Internal Deadlines ##

For each of the three versions, there will be three phases in the development cycle:
  1. Implementation
  1. Testing
  1. Bug Fix

Each of these phases will have its own internal deadline and must be completed in order to facilitate the progression to the next phase.  First, the application will be coded during the implementation phase.  When this is complete, the testing phase is entered in which unit, feature, system, and non-functional level testing will be performed.  A list of defects will be compiled as a result.  Finally, from this list, bug fixing will take place before the final build is submitted.
The schedule and internal deadlines for all three versions is shown in Gantt chart format as well as in table format below.

http://pine-apple.googlecode.com/files/deadline.PNG

| |Version 1|Version 2|Version 3|
|:|:--------|:--------|:--------|
|Implementation|June 11-23|July 3 -10|July 17-24|
|Testing|June 24-27|July 11  |July 25-26|
|Bug Fix|June 28-July 7|July 12-15|July 27-29|



## 3) Acceptance Setting ##

We are going to do a user testing for our final version of the project.
Time: 12:00 pm
Date: 28 July 2009
Location: Simon Fraser University

We are going to ask some students to look at our final project, and this is the steps

Step:
  1. Create an Admin account for testing.
  1. Ask the user to open the iClicky website
  1. Let the users to register an account.
  1. Use I-phone to open the iClicky application.
  1. We will provide the sample quizzes
  1. The user will do the quiz
  1. Check their scores in iClicky.
  1. Ask their opinion about the program.

Question:
  1. What do you think of the program?       1     2     3     4     5
  1. How hard is it to use the program?      1     2     3     4     5
  1. Would you buy this application?
  1. Are you willing to use the application?
  1. Any suggestion to improve the application?
  1. Do you think your professor would likely use this application?

## 4) Integration Testing ##

### Version 1 Integration ###

The purpose of the first integration is to integrate the basic client and the server features. The first feature that will be integrated before any other features are combined is the automated login with the client and the server. Since the client saves the user information it can connect to the database as soon as the client is opened. To make sure this feature works correctly a text box will be added to the user interface that will display true if connection was a success or false if it was not. Once this feature is completed then the population of the client’s list of classes can be done by retrieving the list of classes for that specific user from the server. To test this all that is needed is to compare weather the displayed class list matches the class list saved on the server. Now the ability to login to a class will be completed as well as the automated attendance recording if the password is correct. To test this feature a pop up box will appear if the password is incorrect, saying “Password Incorrect” (at this point it is assumed the pop up box feature has already been tested and is working) .  To make sure the attendance is recorded correctly simply view the database.  Other features, in this version, that will be done do not require integration of the server and the client. One feature that does require integration is the report bugs feature which needs to be able to integrate with the mail application built into the iPhone/ iTouch.

### Version 2 Integration ###

In version two of iClicky there is only one feature that needs to be integrated and tested which is the quiz feature. This is the main function of iClicky. To integrate the quiz feature the server list of questions will be displayed one at a time onto the client. To ensure that the right questions are displayed in the proper order the ability to refer back to the database seems to be the simplest solution.

### Version 3 Integration ###

In the final release of iClicky the integration of the ability to view previous test scores and averages on the client and server will be done. To ensure the integration was successful multiple steps will be taken. The first step will be to write a quiz and see if it is available to view under the “previous tests” tab on the client. The second step will to check if the score listed on the server matches the score displayed on the client. The final step is to check if the averages calculated on the server matches the average displayed by the client.

## 5) Measurement of Size and Complexity ##

### Size-Related Metrics ###
#### Client ####

To record the size and complexity of the project the main application that will be used is Xcode. It will record the number of files, the number of lines of source, and the size of each individual file. Another important metric that will be recorded is the time spent on coding. Although no software is necessary for this it is an important tool necessary to help estimate the amount of time it will take to code a given number of lines of source code needed. Multiple graphs, most likely pie graphs, will be used to display the raw data. One graph will display the number of lines of source code for a given class in comparison to the amount of time it took for that class. This will give a ruff estimation of what was deemed to be the most difficult in terms of coding and what was the simplest while being updated after each version.

#### Server ####

To record the size and complexity of the server side of the project, there are two main scripts will be used which are Eclipse and PHPDepend . We use Eclipse to measure the number of files required for the project, the total size of the project, and the number of code lines necessary. Moreover, PHPdepend, http://www.pdepend.org/news.html, is used to measure the complexity of the project. The server will also use multiple graph to display all version of measurement; the graph that will display the number of files, the total size, the number of lines, and also the complexity. By displaying it using the multiple graph, we are able to make a comparison and find out a conclusion.




## 6) Action for Qualitative Product ##

|Action|Date|Time|
|:-----|:---|:---|
|meeting (divide the jobs)|12-Jun-09|12:30 PM|
|learn how to code|13-Jun-09|12:00 PM|
|start coding|15-Jun-09|1:00 PM|
|find problems|15-Jun-09|1:00 PM|
|ask question to instructor or TA|16-Jun-09|Anytime|
|meeting (solve problem)|18-Jun-09|8:30 PM|
|continue coding|19-Jun-09|1:00 PM|
|check version 1 before submit|01-Jul-09|1:00 PM|
|evaluating version 1|04-Jul-09|after marked|
|check version 2before submit|before submit version 2|
|evaluating version 2|after version 2 is marked|
|check final product|before submit version 3|

Action:
  1. Coding will be done consistently through the end of the class.
  1. Asking question will also be done constantly
  1. Meeting will also be done consistently