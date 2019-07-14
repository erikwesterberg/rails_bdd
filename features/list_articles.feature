Feature: List articles on the landing page
  As a visitor,
  When I visit the landing page of the application
  I would like to see a list of all articles

  Background: View list of articles on the landing page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
     And the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
  Scenario: See Articles on landin page
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"