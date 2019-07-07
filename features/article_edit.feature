Feature: Edit Article
  As a visitor,
  In order to correct articles
  I would like to be able to edit articles

  Scenario: View list of articles on the landing page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
   
  Scenario: Editing articles
    When I visit the site
    And I click on "Edit" 
    Then fill in "Title" with "New Title"
    And fill in "Content" with "New Content"
    And I click "Update Article"
    Then I should be on "landing" page
    Then I should see "Article was successfully created."
    And I should see "New Title"
    And I should see "New Content"