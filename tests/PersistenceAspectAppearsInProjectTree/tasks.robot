*** Settings ***
Documentation     Creates a new class from project structure tree and then generates a persistence aspect for that class
Resource   ../../commons/OpenApp.robot
Resource   ../../commons/ProjectTree.robot
Resource   ../../commons/EditorPanel.robot
Resource   ../../commons/CompanionAspects.robot

*** Tasks ***
Run tYpe
    Open tYpe
Create new class and persistence aspect for it
    Create new class
    Create persistence aspect
    Verify persistence aspect was created
Verify persistence aspect shows up in project tree
    Verify persistence aspect appears in project tree