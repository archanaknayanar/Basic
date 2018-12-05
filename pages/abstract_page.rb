require "rspec"
require "selenium-webdriver"

class AbstractPage

    @@driver = nil

    def initialize(driver)
        @@driver = driver
    end
    
    def NavigateToApp
        @@driver.navigate.to("https://staging.tintup.com")
        return HomePage.new(@@driver)
    end

    def quit
        @@driver.quit
    end

end