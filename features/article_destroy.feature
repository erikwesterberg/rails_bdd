Feature: Destroy Article
  As a visitor,
  In order to just have good quality articles
  I would like to be able to delete articles

  Scenario: View list of articles on the landing page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
   
  Scenario: Deleting articles
    When I visit the site
    When I click on "destroy"
    And I accept the alert
    Then I should be on "landing" page
    And I should not see "A Breaking news item"