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

