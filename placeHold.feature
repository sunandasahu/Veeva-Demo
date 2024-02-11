@holdbooks
Feature: Place hold on a book in library application

Background: 
 Given: User is a active library member
 And Successfully log in to library account
 

  @e2e
  Scenario Outline: Verify Library member should able to place books on hold
    Given User login to library account and landed on home page
    When In Home page, Search a book using <bookTitle>
    And  Select Format as <format>
    Then All available books should be retrieved
    When  User select a book from the list
    And  Click on Hold option 
    Then Hold page should open
    When User select a pick up <location> 
    And  User select a <notificationMethod> 
    And  Submit the order
    Then Sucess Message should be displayed
    When User navigate to My List > Hold Details
    And Check for Holds count
    Then Hold count should increase
    And Book details should be shown in hold section
    
     Examples: 
    | bookTitle 		  | format 							| location  | notificationMethod |
		| Harry Potter 		|	Book(Regular Print) | Library 1 | Email 						 |
		| Boxcar Children	| DVD 								| Library 2 | Text    					 |
		| Big Nate 				| Book(Large Print) 	| Library 1 | Phone							 |
      

  @e2e
  Scenario: Verify edit functionality for book on Hold
    Given User login to library account and landed on home page
    When User navigate to My List - Hold Details
    And  Click on Edit button next to book to be Edited
    Then Edit Hold page should be displayed
    When User update the pick up location
    And  User update Phone number
    And Click on Save Changes
    Then Success Message should be displayed
    And Current Holds page should be displayed
    And Updated Pick up location should be shown
    And Updated Phone number should be shown
    
    
    