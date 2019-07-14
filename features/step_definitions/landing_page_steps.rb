When("I visit the site") do
  visit root_path
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end


Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I am logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click on {string} button") do |button|
click_on button
end

Then("I accept the alert") do 
  page.driver.browser.switch_to.alert.accept
end

Given("i visit {string} page") do |string|
  visit root_path
end







