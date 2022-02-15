*** Settings ***
Documentation    Common keywords used for interactions with the Debug Panel
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements. If this grows too much, we may export all locators to a singular variables file
${PATH_RUN_TESTS_PANEL}    image:../../images/run-panel-tests-path.png
${PATH_MODEL_CHECKER_PANEL}    image:../../images/run-panel-tests-path.png

*** Keywords ***
Verify YP Tests Ran
    ${match}=    Wait For Element    ${PATH_RUN_TESTS_PANEL}
    Log    Found a match for persistence aspect that was created at (${match.top}, ${match.left}).

Verify package checked
    ${match}=    Wait For Element    ${PATH_MODEL_CHECKER_PANEL}
    Log    Found a match for persistence aspect that was created at (${match.top}, ${match.left}).
