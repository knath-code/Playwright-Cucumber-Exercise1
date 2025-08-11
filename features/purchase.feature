Feature: Purchase Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  Scenario:  Validate successful purchase text
  Then I will login as 'standard_user'
  Then I will add the backpack to the cart
  And I select the cart from the top right 
  And I proced to Checkout
  And I fill in checkout information with 
      | First Name       | Kam     |
      | Last Nath        | Nath    |
      | Zip/Postal Code  | 48212   |

  And I continue to the overview page 
  And complete the purchase
  And I should see the confirmation message "'Thank you for your order!'
   