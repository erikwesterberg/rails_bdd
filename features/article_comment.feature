Feature: Comment on articles
  As a visitor,
  When I read some of the articles
  I would like to be able to comment on the articles 

  Scenario: View list of articles on the landing page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
    
Scenario: Reader can comment on articles
    When I click on the "Show" link
    
    
 