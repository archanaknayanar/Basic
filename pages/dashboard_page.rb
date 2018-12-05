require_relative '../pages/abstract_page'

class Dashboard < AbstractPage
    def initialize(driver)
        super(driver)
    end

    def getTitle
        @@driver.title
    end
    
end