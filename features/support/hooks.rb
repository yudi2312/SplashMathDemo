Before do |scenario|
  @browser = Browser.open_browser "safari"
end

After do |scenario|
  @browser.quit unless @browser.nil?
end