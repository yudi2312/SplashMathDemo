Before do |scenario|
  @browser = Browser.open_browser ENV['BROWSER']
end

After do |scenario|
  @browser.quit unless @browser.nil?
end