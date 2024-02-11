
@tag
Feature: Place hold on a book in library application
 

  @e2e1
  Scenario Outline: Verify Library member should able to place books on hold
    Given Successfully login to users library account
    When In Home page, Search a book using <bookTitle>
    And  Select Format as <format>
    Then Available Books should be retrieved
    When  Select a book from the list
    And  Click on Hold option 
    Then Hold page should open
    When User select a pick up <location> 
    And  User select a <notificationMethod> 
    And  Submit the order
    Then Sucess Message should be displayed
    When Go to My List - Hold Details
    And Check for Holds count
    Then Hold count should increase
    And Book details should be shown

  @tag2
  Scenario: Library member edit the location & notification method on book on Hold
    Given Successfully login to users library account
    When Go to My List - Hold Details
    And  Click on Edit button next to book to be Edited
    Then Edit Hold page should be displayed
    When User update the location
    And  User update Phone number
    And Click on Save Changes
    Then Success Message should be displayed
    And Current Holds page should be displayed
    And Updated Pick up location should be shown
    And Updated Phone number should be shown
    

    Examples: 
    | bookTitle 		  | format 							| location  | notificationMethod |
		| Harry Potter 		|	Book(Regular Print) | Library 1 | Email 						 |
		| Boxcar Children	| DVD 								| Library 2 | Text    					 |
		| Big Nate 				| Book(Large Print) 	| Library 1 | Phone							 |
      
