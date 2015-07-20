require 'selenium-webdriver'
browser = Selenium::WebDriver.for :firefox
browser.get 'https://www.listia.com/login'
input = browser.find_element(:id, 'login')
input.send_keys('vladcolman')
input = browser.find_element(:id, 'password')
input.send_keys('ltestqa345')
button = browser.find_element(:id, 'submit_l')
button.click
puts "Title of result page is: #{browser.title}"