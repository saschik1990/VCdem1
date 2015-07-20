require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.manage.timeouts.implicit_wait = 15
url = "http://www.bing.com"
query = "What is Selenium?"
browser.navigate.to url


puts "Title of the Bing.com Page \t\t\t\t: #{browser.title}"
puts "URL of the Bing.com Page \t\t\t\t: #{browser.current_url}"
element = browser.find_element(:id, 'sb_form_q')
element.send_keys query
browser.find_element(:id, 'sb_form_go').click


puts "Title of the Bing.com Result Page \t\t: #{browser.title}"
puts "URL of the Bing.com Result Page \t\t: #{browser.current_url}"
browser.save_screenshot "bing_01.png"


browser.find_element(:link_text, "Selenium - Wikipedia, the free encyclopedia").click
puts "Title of the Selenium - Wikipedia Page \t: #{browser.title}"
puts "URL of the Selenium - Wikipedia Page \t: #{browser.current_url}"
browser.save_screenshot "bing_02.png"


browser.find_element(:partial_link_text, "About ").click
puts "Title of the About Wikipedia Page \t\t: #{browser.title}"
puts "URL of the About Wikipedia Page \t\t: #{browser.current_url}"
browser.save_screenshot "bing_03.png"


browser.navigate.back
puts "Title of Page {Navigated back} \t\t\t: #{browser.title}"
puts "URL of Page {Navigated back} \t\t\t: #{browser.current_url}"


browser.quit