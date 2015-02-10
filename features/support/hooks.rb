require 'watir-webdriver'



Before do
  @browser = Watir::Browser.new :firefox
  @browser.cookies.clear
  @browser.window.maximize


end


After do
  @browser.close
end