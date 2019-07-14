Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

Background:
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications | 
     And the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
    When I visit the site
    And I am logged in as "John"
    And I click on "New Article" button

 Scenario: Successfully create an article
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click on "Create Article" button
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Content" with "Excited about learning a new framework"
    And I click on "Create Article" button
    Then I should see "Title can't be blank"