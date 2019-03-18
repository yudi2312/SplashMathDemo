Before do |scenario|
  @browser = Browser.open_browser "chrome"
end

After do |scenario|
  @browser.quit unless @browser.nil?
end