*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set counter by hand
    Go To  ${HOME_URL}
    Input Text  query  5
    Click Button  aseta
    Page Should Contain  nappia painettu 5 kertaa
    Click Button  Nollaa