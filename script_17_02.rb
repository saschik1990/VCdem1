require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.driver.manage.timeouts.implicit_wait = 15
url = "http://www.bing.com"
query = "What is Selenium?"
browser.goto "http://www.bing.com"


puts "Title of the Bing.com Page \t\t\t\t: #{browser.title}"
puts "URL of the Bing.com Page \t\t\t\t: #{browser.current_url}"
element = browser.link(:text => /sb_form_q/).click
element.send_keys query


puts "Title of the Bing.com Result Page \t\t: #{browser.title}"
puts "URL of the Bing.com Result Page \t\t: #{browser.current_url}"
browser.screenshot.save "bing_01.png"


browser.radio(:id, "Selenium - Wikipedia, the free encyclopedia").click
puts "Title of the Selenium - Wikipedia Page \t: #{browser.title}"
puts "URL of the Selenium - Wikipedia Page \t: #{browser.current_url}"
browser.screenshot.save "bing_02.png"


browser.checkbox(:id, "About ").click
puts "Title of the About Wikipedia Page \t\t: #{browser.title}"
puts "URL of the About Wikipedia Page \t\t: #{browser.current_url}"
browser.screenshot.save "bing_03.png"


browser.navigate.back
puts "Title of Page {Navigated back} \t\t\t: #{browser.title}"
puts "URL of Page {Navigated back} \t\t\t: #{browser.current_url}"


browser.quit