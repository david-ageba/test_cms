@jenkins

  Feature: Create Product Reviews

    Background:
        Given I am on Hearst Expression Engine login page
        When I enter a valid username superadmin
        And I enter a valid password o2qidk426L
        And I click on the login button
        Then I should see Super Admin


    Scenario Outline: Create Product Reviews
      When I click product/food review link from from content list
      And I enter product name <product_name>
      And I select product review from Page Type drop down <page_type>
      #And I select product review from Page Type drop down



      Examples:
      |product_name|page_type|
      |Samsung NV80F7786HS Electric Oven|product-review|
      |Samsung NV80F7786HS Electric Oven|food-review|
