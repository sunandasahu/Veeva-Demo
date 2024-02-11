#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Verify checked in books in users library account
 

  @tag1
  Scenario: Verify checked-in books in users library account

    Given  Users checked-in books from the library
    And Successfully logged in  to users library account
    Then  Items checked out should be displayed
    When User navigate to Current Items Checked Out page 
    Then Book details should be shown 
    And Renew button should be enabled
    And Renewals Left should be 3 
    And Due date should be future date
    
    
  @tag2
  Scenario: Verify Fine Charges for overdue books in users library account
    Given Checked in books are overdue 
    And Successfully logged in  to users library account
    When User navigate to Current Items Checked Out page 
    Then Book details should be shown 
    And Renew button should be Disabled
    And Renewals Left should be 0 
    And Due date should be past date
    When User navigate to Charges Page 
    Then Total Fined amount should be displayed
    When User navigate to current charges page 
    Then All Book details along with respective fined amount should be displayed 

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
