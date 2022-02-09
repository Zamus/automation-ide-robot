*** Settings ***
Documentation    Common keywords used for interactions with the Editor panel
Resource    Base.robot

*** Keywords ***
Verify persistence aspect was created
    ${match}=    Wait For Element    alias:Sample.PersistenteAspect
    Log    Found a match for persistence aspect that was created at (${match.top}, ${match.left}).