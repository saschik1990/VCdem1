require "selenium-webdriver"

browser = Selenium::WebDriver.for :firefox
browser.get "http://learn2test.net/qa/apps/sign_up/v1/"

#title validation
puts "Title is: #{browser.title}"

#quotes validation
quotes = browser.find_element(:id, "id_quotes")
puts "Quote is #{quotes.text}"
puts "Quote size: #{quotes.size}"
puts "Quote location: #{quotes.location}"

browser.quit