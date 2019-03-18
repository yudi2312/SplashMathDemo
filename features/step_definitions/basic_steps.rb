When(/^I navigate to the home page$/) do
  Browser.navigate_to"www.google.com"
  # visit_page(SplashMath)
  on_page(SplashMath)
  enter_field_value("search bar", "test")
  click_element("google search")
  fail "here"
end