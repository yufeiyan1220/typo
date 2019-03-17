Feature: Manage Categories
  As a blog administrator
  I want to be able to manage categories of my blog

   Background:
    Given the blog is set up
    And I am logged into the admin panel


   Scenario: Allow admin to save a new category
    And I am on the categories page
    When I fill in the following:
    | Name        | Music                                                    |
    | Keywords    | Rap, Pop, Dance, Electronic, Classic                            |
    | Description | This category groups articles that are related to musics. |
    And I press "Save"
    Then I should be on the categories page
    And I should see "This category groups articles that are related to musics." 
    And I should see "Rap, Pop, Dance, Electronic, Classic" 
    
   Scenario: Allow admin to edit an existing category
    Given that Music categories are added
    And I am on the categories page
    When I follow "Music"
    Then the "category_name" field should contain "Music"
    When I fill in the following:
      | Keywords | Piano, Guitar, Violin, Drum |
    And I press "Save"
    Then I should be on the categories page
    And I should see "Piano, Guitar, Violin, Drum"
