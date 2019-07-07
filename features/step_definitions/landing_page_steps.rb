When("I visit the site") do
  visit root_path
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

Given("I click {string}") do |string|
  click_on string
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click on {string} link") do |string|
click_link
end




