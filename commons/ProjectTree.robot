*** Settings ***
Documentation     Common keywords for project tree panel
Library     String
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements. If this grows too much, we may export all locators to a singular variables file
${PATH_PROJECT_TREE_WORKDOG_ROOT}    image:../../images/projecttree-workdog-root-path.png
${PATH_PROJECT_TREE_WORKDOG_PERSISTENCE_ASPECT}    image:../../images/projectree-workdog-persistence-aspect-path.png

*** Keywords ***
Create new class
    Click    ${PATH_PROJECT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down
    Press Keys    right    right
    Press Keys    enter
    ${CLASS_NAME} =  Generate Random String  5  [LETTERS]
    Type Text    ${CLASS_NAME}
    Press Keys    tab    enter
    Type Text   dog

Create new class with XO relationship
    Click    ${PATH_PROJECT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down
    Press Keys    right    right
    Press Keys    enter
    ${CLASS_NAME} =  Generate Random String  5  [LETTERS]
    Type Text    ${CLASS_NAME}
    Press Keys    tab
    Type Text   field
    Type Text   hasDog
    Press Keys  tab
    Type Text   Workdog
    
Verify persistence aspect appears in project tree
    ${match}=    Wait For Element    ${PATH_PROJECT_TREE_WORKDOG_PERSISTENCE_ASPECT}
    Log    Found a match for persistence aspect that was created at (${match.top}, ${match.left}).