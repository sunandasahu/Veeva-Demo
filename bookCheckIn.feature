@checkinbooks
Feature: Verify checked in books and charges for overdue books in users library account


 Background: 
 Given: User is a active library member
 And Checked out books from library

 
  @e2e
  Scenario: Verify checked-in books in users library account
    Given User successfully logged in to library account And Landed on home page
    When User navigate to Current Items Checked Out page 
    Then Number of books checked out And All book details should be displayed 
    And Renew button should be enabled for non overdue books
    And Renewals Left count should be 3 for newly checked out books
    And Due date should be a future date
    
    
  @e2e
  Scenario: Verify Fine Charges for overdue books in users library account
    Given Checked in books are overdue 
    And Successfully logged in  to users library account
    When User navigate to Current Items Checked Out page 
    Then Book details should be shown 
    And Renew button should be disabled for overdue items
    And Renewals Left should be 0 
    And Due date should be past date
    When User navigate to Charges Page 
    Then Total Fined amount should be displayed
    When User navigate to current charges page 
    Then All Book details along with respective fined amount should be displayed 
    