Given /^I am on the login screen$/ do
    @driver.manage.timeouts.implicit_wait = 5
    @driver.find_element(:accessibility_id, "Login").click

end

When /^I write email "([^"]*)" and password "([^"]*)"$/ do |email, password|
    @driver.find_element(:accessibility_id, "input-email").send_keys email
    @driver.find_element(:accessibility_id, "input-password").send_keys password
end

When /^I click login button$/ do
    @driver.find_element(:accessibility_id, "button-LOGIN").click
end

When /^Pop up message showed tells "([^"]*)"$/ do |textLogin|
    popUp = @driver.find_element(:id, "android:id/message")
    expect(popUp.text).to eq textLogin
end