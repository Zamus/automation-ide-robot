*** Settings ***
Documentation    Common keywords used for interactions with the Toolbar
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements. If this grows too much, we may export all locators to a singular variables file
${PATH_EDITOR_tYPe_EDITOR_PANEL}    image:../../images/tYPe-editor-panel-path.png

*** Keywords ***
Verify "About tYPe" works
    Click    ${PATH_EDITOR_tYPe_EDITOR_PANEL}
    Press Keys    down
    Press Keys    enter

Check for updates
    Click    ${PATH_EDITOR_tYPe_EDITOR_PANEL}
    Press Keys    down  down
    Press Keys    enter