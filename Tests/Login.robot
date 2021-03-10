*** Settings ***
Documentation     Health Testcases
Resource    ${env}/Resources/page_objects/common_settings.robot


*** Test Cases ***
TC1: Verify user can Login and change study level to PHD and logout
| |  Navigate to Login page            |
| |  Sign in charly account            |
| |  Change study level to PHD         |
| |  Change back to Master             |
| |  Logout of Charly account          |
