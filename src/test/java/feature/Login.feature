@LoginFeature
Feature: Login to the page by entering correct Username & Password

  Scenario Outline: Verify that user is able to login
    Given User has launched the Swaglab application
    When User enters username "<UserName>"
    And User enters password "<Password>"
    And Click on the Login Button
    Then User is able to see the Home page

    Examples: 
      | UserName      | Password     |
      | standard_user | secret_sauce |

  Scenario Outline: User is entering wrong username and password
    Given User has launched the Swaglab application
    When User enters username "<UserName>"
    And User enters password "<Password>"
    And Click on the Login Button
    Then User is able to see the error message "<Error>"

    Examples: 
      | UserName      | Password      | Error                                                                     |
      | standard_user | secret_sauce1 | Epic sadface: Username and password do not match any user in this service |
