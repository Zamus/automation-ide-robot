*** Settings ***
Documentation     Check different aspects of the toolbar such as "About tYPe"

Resource   ../../commons/OpenApp.robot
Resource   ../../commons/ProjectTree.robot
Resource   ../../commons/EditorPanel.robot
Resource   ../../commons/CompanionAspects.robot
Resource   ../../commons/Toolbar.robot
Resource   ../../commons/DebugPanel.robot

*** Tasks ***
Run tYpe
    Open tYpe
Verify "About tYpe works"
    Verify "About tYPe" works
Check for updates
    Check for updates