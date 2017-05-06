Feature: Add comments to an article
  As a visitor,
  when I visit the application's landing page and view an article
  I should able to add a comment to the article


  Background:
    Given the following articles exists
      | title                                | content                                                             |
      | Best resources when learning to code | Several online resources like Lynda, Udemy, Coursera and Edx        |
      | Is Bigger really better?             | Bigger does't not necessarily mean that it is better                |
      | Trump's 100 Days                     | Its been 100 days since Donald trump was sworn into power           |
      | Habits of successful people          | Successful people are consistent, persistent and risk takers        |



  Scenario: Add Comment to an article
    When I am on the landing page
    Then I should see "Best resources when learning to code"
    And I should see "Is Bigger really better?"
    And I should see "Trump's 100 Days "
    And I should see "Habits of successful people"
    When I click on "Read Article" link
    Then I should visit the "article" show page
    And I should see the "article" content
    And I should see a "Comment" form
    And I fill "Getting up early is also an habit" into the comment form"
    And I click on "Submit" button
    Then I should see "Comment successfully added"
    And I should see the added comment on the article show page



