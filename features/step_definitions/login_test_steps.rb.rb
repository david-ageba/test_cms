Given(/^I am on Hearst Expression Engine login page$/) do
  #@browser.goto "http://cmsbeta.goodhousekeeping.co.uk/admin.php?"
  @browser.goto "http://cms.ghstaging.hdigital.net/institute/admin.php?"

  #visit_page(LoginPage)
  sleep 1
end

When(/^I enter a valid username (.*)$/) do |username|
  on(LoginPage).username=username
  #@browser.text_field(:id => "username").set(username)
end

And(/^I enter a valid password (.*)$/) do |password|
  on(LoginPage).password=password
  #@browser.text_field(:id => "password").set(password)
end

And(/^I click on the login button$/) do
  on(LoginPage).login
  #@browser.button(:value => "Login").click
  sleep 2
end


Then(/^I should see (.*)$/) do |account_name|
  on(LoginPage).text.should include account_name
  #@browser.text.should include account_name
end

When(/^I click on reset password link$/) do
  on(LoginPage).reset
  #@browser.link(:xpath => ".//*[@id='content']/form/p/span/a").click
end

And(/^I enter an email address linked to the user (.*)$/) do |email_address|

  @browser.text_field(:id => "email").set(email_address)
end

And(/^I click the reset button$/) do
  @browser.button(:value => "Submit").click
  sleep 2
end