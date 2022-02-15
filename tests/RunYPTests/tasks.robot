*** Settings ***
Documentation     Run YP Tests from project, component and package level

Resource   ../../commons/OpenApp.robot
Resource   ../../commons/ProjectTree.robot
Resource   ../../commons/EditorPanel.robot
Resource   ../../commons/CompanionAspects.robot
Resource   ../../commons/Toolbar.robot
Resource   ../../commons/DebugPanel.robot

*** Tasks ***
Run tYpe
    Open tYpe
Run YP Tests in Package
    Run tests from package
    Verify YP Tests Ran
Run YP Tests in Project
    Run tests from project
    Verify YP Tests Ran
Run YP Tests in Component
    Run tests from component
    Verify YP Tests Ran