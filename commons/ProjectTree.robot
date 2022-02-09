*** Settings ***
Documentation     Common keywords for project tree panel
Resource    Base.robot

*** Keywords ***
Create new class
    Click    alias:ProjectTree.Workdog.Root
    Press Keys    shift_l    c
    Press Keys    down
    Press Keys    right    right
    Press Keys    enter
    Type Text    clazz
    Press Keys    tab    enter
    Type Text    field1