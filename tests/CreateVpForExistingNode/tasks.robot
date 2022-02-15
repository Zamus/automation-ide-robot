*** Settings ***
Documentation     Creates a new virtual package for an existing node
Resource   ../../commons/OpenApp.robot
Resource   ../../commons/ProjectTree.robot
Resource   ../../commons/EditorPanel.robot
Resource   ../../commons/CompanionAspects.robot
Resource   ../../commons/Toolbar.robot
Resource   ../../commons/DebugPanel.robot

*** Tasks ***
Run tYpe
    Open tYpe
Create and verify virtual package for existing node
    Create and Verify virtual package on existing node