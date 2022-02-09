*** Settings ***
Documentation     Common keywords for project tree panel
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements
${PATH_PROJECT_TREE_WORKDOG_ROOT}    image:../../images/projecttree-workdog-root-path.png

*** Keywords ***
Create new class
    Click    ${PATH_PROJECT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down
    Press Keys    right    right
    Press Keys    enter
    Type Text    clazz
    Press Keys    tab    enter
    Type Text    field1