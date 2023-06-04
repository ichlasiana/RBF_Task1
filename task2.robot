*** Settings ***
Library    rbf/lib/site-packages/robot/libraries/XML.py
Library    rbf/lib/site-packages/robot/libraries/Collections.py

*** Test Cases ***
TC1: Munculkan Listnya
    Munculkan List Gabungan

*** Keywords ***

Munculkan List Gabungan
    FOR    ${i}    IN  @{LIST}
        FOR    ${j}    IN    @{LIST2}
            Append To List    ${LIST3}      ${i}${j}
        END    
    END

    Log To Console    ${LIST3}
    

*** Variables ***
# ini global variable
@{LIST}=    a    b    c    d
@{LIST2}=    1    2    3    4
@{LIST3}    