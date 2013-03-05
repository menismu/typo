Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    #Given I am on the new article page
    #When I fill in "article_title" with "Article 1"
    #And I fill in "article__body_and_extended_editor" with "Article 1 content"
    #And I press "Publish"
    #Given I am on the new article page
    #When I fill in "article_title" with "Article 2"
    #And I fill in "article__body_and_extended_editor" with "Article 2 content"
    #And I press "Publish"
    #When I go to the home page
    #Then I should see "Article 1"
    #And I follow "Article 1"
    #And I fill in "comment_author" with "admin"
    #And I fill in "comment_email" with "joe@snow.com"
    #And I fill in "comment_body" with "Article 1 comment"
    #And I press "comment"
    #When I go to the home page
    #Then I should see "Article 2"
    #And I follow "Article 2"
    #And I fill in "comment_author" with "admin"
    #And I fill in "comment_email" with "joe@snow.com"
    #And I fill in "comment_body" with "Article 2 comment"
    #And I press "comment"
    Given I am on the edit article page
    #And I fill in "merge_with" with "2"
    #And I press "Publish"

  Scenario: Cannot merge articles as Publisher
    Given I logout from the admin panel
    And I am logged into the admin panel as Publisher
    When I am on the edit article page
    Then I should not see "merge_with"

  Scenario: Can merge articles as Administrator
    When I am on the edit article page
    Then I should see "merge_with"

  #Scenario: Merged article should have one author from original articles
    #When I go to the home page
    #Then I should see "Article 1"
    #When I follow "Article 1"
    #Then I should see "admin"

  #Scenario: Merged article should be the title from either one of previous articles
    #When I go to the home page
    #Then I should see "Article 1"
    #When I follow "Article 1"
    #Then I should see "Article 1"

  #Scenario: Merged article contains comments from both previous articles
    #When I go to the home page
    #Then I should see "Article 1"
    #When I follow "Article 1"
    #Then I should see "Article 1 comment 1"
    #And I should see "Artice 2 comment 1"

  #Scenario: Merged article should contain the text of both previous articles
    #When I go to the home page
    #Then I should see "Article 1"
    #When I follow "Article 1"
    #Then I should see "Article 1 content"
    #And I should see "Article 2 content"
