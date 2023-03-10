module PageObjects
  def find_element_by_id(locator)
    find_element(:id, "#{locator}")
  rescue StandardError => e
    raise "#{e.inspect}\nElement with ID = '#{locator}' was not found on the current screen."
  end

  def find_element_by_class(locator)
    find_element(:class, "#{locator}")
  rescue StandardError => e
    raise "#{e.inspect}\nElement with CLASS = '#{locator}' was not found on the current screen."
  end

  def find_element_by_text(locator)
    find_element(:xpath, "//*[contains(@text,'#{locator}')]")
  rescue StandardError => e
    raise "#{e.inspect}\nElement with TEXT = '#{locator}' was not found on the current screen."
  end

  def is_visible?(locator_type = nil, locator)
    # o begin/rescue é necessário nesse método por conta dos raise para os erros nos métodos de locate
    begin
      locator_type.eql?(nil)? find_element_by_text(locator).displayed? : find_element(locator_type, locator).displayed?
      return true
    rescue => e
      return false
    end
  end

  def wait_for_element(atributos, timeout= 5)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until { find_element(atributos).displayed? }
  rescue
    raise 'Not found result'
  end

  def wait_for_text(locator, timeout = 5)
    wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    wait.until { find_element_by_text(locator).displayed? }
  rescue
    raise 'Not found result'
  end
end
