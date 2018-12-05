require "rspec"
require "selenium-webdriver"
require_relative '../pages/abstract_page'
require_relative '../pages/home_page'
require_relative '../pages/login_form'
require_relative '../pages/dashboard_page'

describe 'Logintest' do

    app = nil

    before(:all) do
        app = AbstractPage.new(Selenium::Webdriver.for(:firefox))
    end

    after(:all) do
        @driver.quit()
    end

    it "can test a login" do

        Dashboard = app
        .NavigateToApp
        .navigateToLoginForm
        .EnterEmail('qatesting+employeeplan@tintup.com')
        .EnterPassword('welcome')
        .Submit
        .getTitle

    end
        
        
    

    
end