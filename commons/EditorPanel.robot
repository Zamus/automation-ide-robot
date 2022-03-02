*** Settings ***
Documentation    Common keywords used for interactions with the Editor panel
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements. If this grows too much, we may export all locators to a singular variables file
${PATH_EDITOR_SAMPLE_PERSISTENCE_ASPECT}    image:../../images/sample-persistence-aspect.png

*** Keywords ***
Verify persistence aspect was created
    ${match}=    Wait For Element    ${PATH_EDITOR_SAMPLE_PERSISTENCE_ASPECT}
    Log    Found a match for persistence aspect that was created at (${match.top}, ${match.left}).