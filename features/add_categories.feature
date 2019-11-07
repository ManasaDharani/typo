Feature: Edit Categories
  As a blog administrator

Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"
    
Scenario: Link should not be broken
        Then I should see "Categories"
        
 Scenario: It should be possible to create new categories
        When I fill in "Name" with "Test123"
        And I press "Save"
        Then I should see "Test123"
        
  Scenario: It should be possible to edit existing categories
        When I follow "General"
        Then I fill in "Description" with "test description"
        And I press "Save"
        Then I should see "test description"