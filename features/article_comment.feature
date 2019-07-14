Feature: Comment on articles
    As a visitor,
    When I read some of the articles
    I would like to be able to comment on the articles 

Background:
  Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
     And the following user exists
      |  email          | password  | name  |
      |  john@doe.com   | password1 | John  |
    When I visit the site
    And I am logged in as "John"
    Then I click on "Show" button
   
Scenario: Reader can comment on articles
    When I fill in "Commenter" with "Jordan Peterson"
    And I fill in "Body" with "This was the shit."
    And I click on "Create Comment" button
    Then I should see "Commenter: Jordan Peterson"
    And I should see "Comment: This was the shit"
    
    
 