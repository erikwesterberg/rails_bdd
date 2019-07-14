Feature: Destroy Article
  As a visitor,
  In order to just have good quality articles
  I would like to be able to delete articles

Background:
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
     And the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
    When I visit the site
    And I am logged in as "John"
   
  Scenario: Deleting articles
    When I click on "Destroy" button
    Then I should be on "landing" page
    And I should not see "A Breaking news item"