require "selenium-webdriver"

browser = Selenium::WebDriver.for :firefox
browser.get "http://learn2test.net/qa/apps/sign_up/v1/"
browser.manage.window.resize_to(800, 600)

#title validation
puts "Title is: #{browser.title}"

#quotes validation
quotes = browser.find_element(:id, "id_quotes")
quotes.dasplayed? ? puts ("Element 'text (quotes)' exists"):
    puts ("Element 'text (quotes)' doesn't exist")
puts "Element 'text (quotes)' value: #{quotes.text}"
puts "Element 'text (quotes)' size: #{quotes.size.to_a}"
puts "Element 'text (quotes)'  location: #{quotes.location.to_a}"
quotes.attribute('class').empty? ? puts("Attribute class value is empty"):
    puts("Atribute class exists: #{quotes.attribute('class')}")

browser.quit