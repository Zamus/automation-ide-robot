*** Settings ***
Documentation    Common keywords used for management of companion aspects (namespace, persistence) from the editor panel
Resource    Base.robot

*** Keywords ***
Create persistence aspect
    Press Keys    tab
    Type Text    text
    Press Keys    cmd    n
    Type Text    Persistence
    Press Keys    down
    Press Keys    enter