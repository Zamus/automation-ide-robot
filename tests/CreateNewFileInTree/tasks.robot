*** Settings ***
Documentation     Creates a new class in project structure tree.
Resource   ../../commons/OpenApp.robot
Resource   ../../commons/ProjectTree.robot
Resource   ../../commons/EditorPanel.robot
Resource   ../../commons/CompanionAspects.robot
Resource    ../../commons/locators.json

*** Tasks ***
Run tYpe
    Open tYpe
Create new class and persistence aspect for it
    Create new class
    Create persistence aspect
    Verify persistence aspect was created