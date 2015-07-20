require "selenium-webdriver"

browser = Selenium::WebDriver.for :firefox
browser.get "http://learn2test.net/qa/apps/sign_up/v1/"

#title validation
puts "Title is: #{browser.title}"

#quotes validation
quotes = browser.find_element(:id, "id_quotes")
puts "Quote is dysplayed: #{quotes.displayed?}"
puts "Quote is: #{quotes.to_s}"
