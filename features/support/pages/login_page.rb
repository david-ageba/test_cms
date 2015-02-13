class LoginPage

  include PageObject
  #include RSpec::Matches

  #page_url FigNewton.base_url

  text_field :username, id: 'username'
  text_field :password, id:'password'
  button :login, value:'Login'
  text_area :login_user, text:'account_name'
  link :reset, xpath:'html/body/div[2]/form/p/span/a'




  #def initialize(browser)
   # @browser = browser
  #end



  #page_url FigNewton.BASE_URL
end