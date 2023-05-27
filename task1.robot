*** Settings ***
Library     Collections
Library     Builtin
Library     selenium
Library     OperatingSystem
Resource    steps.resource

*** Test Cases ***

task1 : kancil memakan ketimun
    Given Aku punya 5 ketimun    ${qty_ketimun}
    When Kancil datang
    And Kancil ambil ketimun    ${give_ketimun}
    Then Sisa ketimunku adalah