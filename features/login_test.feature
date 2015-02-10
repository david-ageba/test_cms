@jenkins

Feature: Login Authentication

  Background:
    Given I am on Hearst Expression Engine login page


  Scenario Outline: Login with valid Username and Password
      When I enter a valid username <username>
      And I enter a valid password <password>
      And I click on the login button
      Then I should see <account_name>

    Examples:
      | username | password |account_name|
      |superadmin|o2qidk426L|Super Admin |
      #|superadmin|o2qidk426| Invalid username or password.|
      #|          |         | The username field is required.|
      #|superadmin|         | The password field is required.|


  Scenario Outline: Reset Password
      When I click on reset password link
      And I enter an email address linked to the user <email_address>
      And I click the reset button
      Then I should see <on_screen_notice>

    Examples:
      |email_address|on_screen_notice|
      |david.ageba@hearst.com|If this email address is associated with an account, instructions for resetting your password have just been emailed to you.|




