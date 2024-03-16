*** Settings ***
Documentation       Validation of amazon landing page.
Resource            D:/robot framework/Tests/SupportSteps/SupportSteps_LandingPage.robot
Suite Teardown      close all browsers
*** Test Cases ***
Validation of amazon landing page
    [Tags]       Amazon_reg     package_1       sprint_1       TC_009
    Given User logs into amazon as end user
    When User maximise the window
    Then Validate that user should able to see the title of webpage