*** Settings ***
Documentation     Common keywords for project tree panel
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements. If this grows too much, we may export all locators to a singular variables file
${PATH_PROJECT_TREE_WORKDOG_ROOT}    image:../../images/projecttree-workdog-project-root-path.png
${PATH_COMPONENT_TREE_WORKDOG_ROOT}    image:../../images/projecttree-workday-component-root-path.png
${PATH_PACKAGE_TREE_WORKDOG_ROOT}    image:../../images/projecttree-workdog-package-root-path.png
${PATH_PROJECT_TREE_WORKDOG_CLASS}    image:../../images/class-name-path.png
${PATH_VIRTUAL_PACKAGE_CREATED}    image:../../images/virtual-package-created-path.png
${PATH_VIRTUAL_PACKAGE_POPUP}    image:../../images/virtual-package-popup-path.png


*** Keywords ***
Check project
    Click    ${PATH_PROJECT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down  down
    Press Keys    enter

Check component
    Click    ${PATH_COMPONENT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down  down    down
    Press Keys    enter

Check package
    Click    ${PATH_PACKAGE_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down  down    down    down    down
    Press Keys    enter

Create new class
    Click    ${PATH_PACKAGE_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down
    Press Keys    right    right
    Press Keys    enter
    Type Text    clazz
    Press Keys    tab    enter
    Type Text    field1

Create and Verify virtual package on existing node
    Click    ${PATH_PROJECT_TREE_WORKDOG_CLASS}
    Press Keys    shift_l    c
    Press Keys    down
    Press Keys    enter
    Wait For Element    ${PATH_VIRTUAL_PACKAGE_POPUP}
    Type Text    VpTest
    Press Keys    enter
    ${match}=   Wait For Element  ${PATH_VIRTUAL_PACKAGE_CREATED}

Run tests from project
    Click    ${PATH_PROJECT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down  down    down    down
    Press Keys    enter

Run tests from component
    Click    ${PATH_COMPONENT_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down  down    down    down    down    down    down
    Press Keys    enter

Run tests from package
    Click    ${PATH_PACKAGE_TREE_WORKDOG_ROOT}
    Press Keys    shift_l    c
    Press Keys    down  down    down    down    down    down    down    down    down
    Press Keys    enter