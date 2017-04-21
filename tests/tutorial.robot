*** Settings ***
Library  AppiumLibrary  10
Suite Setup  Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=${deviceName}
             ...  udid=${deviceId}
             ...  app=${appBinary}
Suite Teardown  Close Application

*** Test Cases ***
App Presents the Login Page When Launches
    Page Should Contain Element  id=btn_login

Move To Second Screen When Username And Password Are Not Empty
    Input Text  txt_username  user1
    Input Text  txt_password  secret123
    Tap  btn_login
    Wait Until Page Contains  Hello World!  timeout=2

