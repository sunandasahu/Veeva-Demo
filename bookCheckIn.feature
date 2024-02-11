@checkin
Feature: Verify checked in books in users library account
 

  @e2e
  Scenario: Verify checked-in books in users library account
    Given  Users checked-in books from the library
    And Successfully logged in  to users library account
    Then  Items checked out should be displayed
    When User navigate to Current Items Checked Out page 
    Then Book details should be shown 
    And Renew button should be enabled
    And Renewals Left should be 3 
    And Due date should be future date
    
    
  @e2e
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
    