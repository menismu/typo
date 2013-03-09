Feature: Categories Articles 
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to manage categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the new category page

  Scenario: Can access to categories page
    Then I should see "Categories"

  Scenario: Can create a new category
    Then I fill in "category_name" with "Category Name"
    And I fill in "category_keywords" with "key1, key2"
    And I fill in "category_description" with "Description of the category"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Category Name"
    And I should see "key1, key2"
    And I should see "Description of the category"

  Scenario: Can cancel category creation
    Then I fill in "category_name" with "Category Name 2"
    And I follow "Cancel"
    Then I should not see "Category Name 2"
    
  Scenario: Can edit categories
    When I follow "Edit"
    Then the "category_name" field should contain "Category Name"
    And the "category_keywords" field should contain "key, key2"
    And the "category_description" field should contain "Description of the category"
    When I fill in "category_name" with "Category New Name"
    And press "Save"
    Then I should see "Category New Name"
    And I should not see "Category Name"

  Scenario: Can delete categories
    When I follow "Delete"
    And I press "delete"
    Then I should not see "Category Name"
    And I should not see "Category New Name"
