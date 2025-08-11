Feature: Product Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  # Create a datatable to validate the Price (high to low) and Price (low to high) sort options (top-right) using a Scenario Outline
  
  Scenario Outline:  Validate product sort by price <sort>
  Then I will login as 'standard_user'
  And I sort products by "<sort>"
  Then I verify product are sorted by price in "<order>" 

  Examples:   
    | sort                   |  order         |
    | Price (7.99 to 49.99)  | Ascending      |
    | Price (49.99 to 7.99)  | Descending     |