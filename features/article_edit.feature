Feature: Edit Article
  As a visitor,
  In order to correct articles
  I would like to be able to edit articles

Background:
   Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
    And the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
    When I visit the site
    And I am logged in as "John"
   
Scenario: Editing articles
    When I click on "Edit" button
    Then I should see "Access denied as you are not owner of this article"
    Then I fill in "Title" with "New Title"
    And I fill in "Content" with "New Content"
    And I click on "Update Article" button
    Then I should see "New Title"
    And I should see "New Content"