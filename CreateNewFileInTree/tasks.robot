*** Settings ***
Documentation     Creates a new file in project structure tree.
Library    RPA.Desktop
Library    Process

*** Tasks ***
Run tYpe
    Open tYpe
Create new file
    Create new file
    Create persistence aspect
    Verify persistence aspect was created

*** Keywords ***
Open tYpe
    Run Process    open    -a    tYPe-3.18.0.app
Create new file
    Click    alias:ProjectTree.Workdog.Root
    Click    alias:ProjectTree.Workdog.Root    right
    Press Keys    down
    Press Keys    right    right
    Press Keys    enter
    Type Text    clazz
    Press Keys    tab    enter
    Type Text    field1
Create persistence aspect
    Press Keys    tab
    Type Text    text
    Press Keys    cmd    n
    Press Keys    down
    Press Keys    enter
Verify persistence aspect was created
    ${match}=    Find Element    alias:Sample.PersistenteAspect
    Log    Found a match for persistence aspect that was created at (${match.top}, ${match.left}).
