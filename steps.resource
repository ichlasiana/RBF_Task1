*** Settings ***
Library    Collections
Library    Builtin
Library    selenium
Library    OperatingSystem

*** Variables ***
${qty_ketimun}     ${5}
${give_ketimun}    ${2}

*** Keywords ***
Aku punya 5 ketimun
    [Arguments]    ${qty_ketimun}
    Log    aku membeli ketimun di pasar sebanyak ${qty_ketimun}

Kancil datang
    Log    tiba-tiba kancil datang kerumah

Kancil ambil ketimun
    [Arguments]    ${give_ketimun}
    Log    kancil mengambil ketimun sebanyak ${give_ketimun}

Sisa ketimunku adalah
    ${left_ketimun}    Evaluate    ${qty_ketimun}-${give_ketimun}
    Log    Sisa ketimunku adalah ${left_ketimun}