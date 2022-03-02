*** Settings ***
Documentation    Common keywords used for management of companion aspects (namespace, persistence) from the editor panel
Resource    Base.robot

*** Variables ***
#Variables that contains paths to referencial images for locating elements. If this grows too much, we may export all locators to a singular variables file
${PATH_SUV_TOOLBAR_WORKDOG_ROOT}    image:../../images/SuvDeployRocket.png
${PATH_SUV_DDEPLOYMENT_SUCCESS_WORKDOG_ROOT}    image:../../images/SuvDeploySuccessMsg.png

*** Keywords ***
Deploy to SUV
    Click    ${PATH_SUV_TOOLBAR_WORKDOG_ROOT}

Verify YP Structure deployed to SUV
    Wait For Element    ${PATH_SUV_DDEPLOYMENT_SUCCESS_WORKDOG_ROOT}    timeout=75
    ${match}=    Wait For Element    ${PATH_SUV_DDEPLOYMENT_SUCCESS_WORKDOG_ROOT}
    Log    Found a match for yp structure deployed at (${match.top}, ${match.left}).