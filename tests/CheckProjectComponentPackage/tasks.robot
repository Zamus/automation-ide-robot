*** Settings ***
Documentation     Checks the project, component and packages
Resource   ../../commons/OpenApp.robot
Resource   ../../commons/ProjectTree.robot
Resource   ../../commons/EditorPanel.robot
Resource   ../../commons/CompanionAspects.robot
Resource   ../../commons/Toolbar.robot
Resource   ../../commons/DebugPanel.robot

*** Tasks ***
Run tYpe
    Open tYpe
Check package
    Check package
Check project
    Check project
Check component
    Check component

