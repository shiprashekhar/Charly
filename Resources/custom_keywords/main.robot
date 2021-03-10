*** Settings ***
Documentation    Contains keywords for signin testcases
Resource    ${env}/Resources/page_objects/common_settings.robot

*** Keywords ***

Navigate to Login page
| |  Open Browser             |  https://accounts.cloud.charly.education/                         | chrome |
| |  Maximize Browser Window  |                                                                   |        |
| |  Click Element            |  //a[@id='CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll'] |        |
| |  Sleep                    |  2                                                                |        |
| |  Click Element            |  //a[contains(text(),'Login here!')]                              |        |

Sign in charly account
| |   Wait Until Page contains element  |   //button[contains(text(),'Login')]             |                |
| |   Input Text                        |   //input[@id='email']                           | ${email}       |
| |   Input password                    |   //input[@id='password']                        | ${pass}        |
| |   Click Element                     |   //button[contains(text(),'Login')]             |                |

Change study level to PHD
| |  Wait Until Page contains element  |  //div[@id='layout_sidenav_profile']                                                       |     |
| |  Click Element                     |  //div[@id='layout_sidenav_profile']                                                       |     |
| |  Click Element                     |  //div[@id='sidebar_menu_profile']                                                         |     |
| |  Click Element                     |  //body/div[@id='root']/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/button[3]         |     |
| |  Sleep                             |  2                                                                                         |     |
| |  Select From List By Label         |  name:levelId                                                                              | PHD |
| |  Click Element                     |  //body/div[@id='root']/div[2]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[2]/button[1] |     |

Change back to Master
| |  Sleep                             | 2                                                                                         |        |
| |  Wait Until Page contains element  | //div[@id='layout_sidenav_profile']                                                       |        |
| |  Click Element                     | //div[@id='layout_sidenav_profile']                                                       |        |
| |  Click Element                     | //div[@id='sidebar_menu_profile']                                                         |        |
| |  Click Element                     | //body/div[@id='root']/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/button[3]         |        |
| |  Sleep                             | 2                                                                                         |        |
| |  Select From List By Label         | name:levelId                                                                              | Master |
| |  Click Element                     | //body/div[@id='root']/div[2]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/div[2]/button[1] |        |

Logout of Charly account
| |  Sleep                             |  5                                   |
| |  Wait Until Page contains element  |  //div[@id='layout_sidenav_profile'] |
| |  Click Element                     |  //div[@id='layout_sidenav_profile'] |
| |  Click Element                     |  //div[@id='sidebar_menu_logout']    |
| |  Wait Until Page contains element  |  //p[@id='logout_title']             |
