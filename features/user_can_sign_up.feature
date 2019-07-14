Feature: Sign up to app
  As a visitor,
  In order use application
  I would like to be able to log In

Scenario: Successfully signed up
  When I visit the site
  And I click on "Login" button
  Then I click on "Sign up" button
  And I fill in "Name" with "john"
  And I fill in "Email" with "john@doe.com"
  And I fill in "Password" with "password1"
  And I fill in "Password confirmation" with "password1"
  Then I click on "Sign up" button
  Then I should see "Hello!"
  And I should see "Welcome! You have signed up successfully."
