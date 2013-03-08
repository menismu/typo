Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the edit article page

  Scenario: Cannot merge articles as Publisher
    Given I logout from the admin panel
    And I am logged into the admin panel as Publisher
    When I am on the edit article page
    Then I should not see "merge_with"

  Scenario: Can merge articles as Administrator
    When I am on the edit article page
    Then I should see "merge_with"
