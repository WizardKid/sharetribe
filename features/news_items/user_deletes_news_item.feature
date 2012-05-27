Feature: User deletes news item
  
  @javascript
  Scenario: User deletes news item successfully
    Given there are following users:
      | person | 
      | kassi_testperson1 |
      | kassi_testperson2 |
      | kassi_testperson4 |
      
    And there is news item by "kassi_testperson2" in community "test"
    And news are enabled in community "test"
    And anyone can add news items in community "test"
    And I am logged in as "kassi_testperson4"
    When I follow "About"
    And I follow "News"
    Then I should not see "Remove article"
    When I am logged in as "kassi_testperson2"
    And I follow "About"
    And I follow "News"
    Then I should see "Remove article"
    When I follow "Remove article"
    Then I should see "Article removed" within "#notifications"
    
  @javascript
  Scenario: Admin deletes news item successfully from news page
    Given there are following users:
      | person | 
      | kassi_testperson1 |
      | kassi_testperson2 |
      | kassi_testperson3 |
    And there is news item by "kassi_testperson2" in community "test"
    And news are enabled in community "test"
    And anyone can add news items in community "test"
    And I am logged in as "kassi_testperson1"
    When I follow "About"
    And I follow "News"
    Then I should see "Remove article"
    When I follow "Remove article"
    Then I should see "Article removed" within "#notifications"
  
  
  

  
