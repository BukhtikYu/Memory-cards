require 'selenium-webdriver'
module ::Selenium::WebDriver::Remote
  class Bridge
    alias_method :old_execute, :execute
    def execute(*args)
      sleep(0.2)
      old_execute(*args)
    end
  end
end