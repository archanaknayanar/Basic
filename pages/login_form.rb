require_relative '../pages/abstract_page'

class LoginForm < AbstractPage
    
    def initialize(driver)
        super(driver)
    end

    def EnterEmail(email)
        @@driver.find_element(:id, 'credential_email').send_keys 'qatesting+employeeplan@tintup.com'
        return LoginForm.new(@@driver)
    end

    def EnterPassword(password)
        @@driver.find_element(:id, 'credential_password').send_keys 'welcome'
        return LoginForm.new(@@driver)
    end

    def Submit
        @driver.find_element(:xpath, '//*[@id="new_credential"]/div[4]/input').click
        return LoginForm.new(@@driver)
        
    end

    
end