Feature: login
  In order to use application
  users have to authenticate
  so that authorized actions can be performed

  Scenario: logout a logged in user
    Given a user "testuser" exists with "testpass" password
    And   is logged in to the application
    When  I follow "Logout"
    Then  I should be on the root page
    And   should see "Login"
    And   should see "Successfully logged out"

