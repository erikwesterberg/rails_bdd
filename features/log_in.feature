Feature: Log in to app
  As a User
  In order to edit and view articles
  I would like to be able to log in to app

  Background: 
    Given the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
    And I visit the site

Scenario: Successfully logged out
  When I click on "Login" button
  And I fill in "Email" with "john@doe.com"
  And I fill in "Password" with "password1"
  And I click on "Log in" button
  Then I should see "Hello!"
  And I should see "Signed in successfully."