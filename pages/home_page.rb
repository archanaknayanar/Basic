require_relative '../pages/abstract_page'

class HomePage < AbstractPage

    def initialize(driver)
        super(driver)
    end

    def navigateToLoginForm
        @driver.find_element(:id, 'login').click
        return LoginForm.new(@@driver)
    end
    
end