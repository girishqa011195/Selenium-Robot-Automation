*** Settings ***
Library     Resources/saucelabs_caps.py
Library     SeleniumLibrary

*** Variables ***
@{_tmp}

${Browser}          safari
${remote_url}       https://oauth-girishqa011195-42442:e8f8c9ba-bdf0-47a6-9660-2a7107e77dfe@ondemand.eu-central.saucelabs.com/wd/hub
${START_URL}        https://www.jnjvisionpro.com/

*** Keywords ***
open sauce with url
    set global variable         ${Suite_Name}
    ${capabilities}=    saucelabs_caps.Browsers     safari  latest  macOS11.00      ${Suite_Name}   oauth-girishqa011195-42442_tunnel_name
    Open browser        https://www.jnjvisionpro.com/       browser=${Browser}
    ...  remote_url=${remote_url}
    ...  desired_capabilities=${capabilities




    }
