Feature: Log out from app
  As a User
  In order to handle my account
  I would like to be able to log ut from app
  
Background:
  Given the following user exists
    |  email          | password  | name  |
    |  john@doe.com   | password1 | John  |
  And I am logged in as "John"
  And i visit "landing" page


Scenario: Successfully logged out
  When I click on "Log out" button
  Then I should see "Signed out successfully."

  