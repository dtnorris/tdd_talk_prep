Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I submit a climbing questionnaire$/) do
  click_on 'Take Survey'
  fill_in :name, with: 'David Tengdin'
  fill_in :age, with: '25'
  fill_in :climbing_grade, with: '5.12'
  fill_in :favorite_climber, with: 'Chris Sharma'
  click_on 'Submit'
end

Then(/^I can see my answers$/) do
  expect(page).to have_content 'David Tengdin'
  expect(page).to have_content '25'
  expect(page).to have_content '5.12'
  expect(page).to have_content 'Chris Sharma'
  expect(page).to have_content 'Submit'
end
