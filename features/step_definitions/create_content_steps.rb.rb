And(/^I click product\/food review link from from content list$/) do
  @browser.link(:xpath, ".//*[@id='navigationTabs']/li[2]/a").hover
  @browser.link(:xpath, ".//*[@id='publishfolder']/a").hover
  @browser.link(:xpath, ".//*[@id='publishfolder']/ul/li[2]/a").click

  
  #@browser.element(:how => what).hover

  #sleep 3
end

And(/^I enter product name (.*)$/) do |product_name|
  @browser.text_field(:id, "title").set(product_name)

end

And(/^I select product review from Page Type drop down (.*)$/) do |page_type|
  @browser.select_list(:name, "field_id_181").select_value(page_type)
  sleep 2
end

#And(/^I select product review from Page Type drop down$/) do
#@browser.select_list(:name, "field_id_181").select_value("product-review")
#sleep 2
#end
