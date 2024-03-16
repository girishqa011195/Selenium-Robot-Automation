*** Settings ***
Resource            D:/robot framework/Tests/WebPages/LandingPage.robot
*** Keywords ***
User logs into amazon as end user
    end user launches the browser
User maximise the window
    maximize window
Validate that user should able to see the title of webpage
    Verify that user should able to see the title of webpage
