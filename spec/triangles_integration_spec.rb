require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_expectations,false)

describe('the path to the traingles page', {:type => :feature}) do
  it('presents a form to input three side lengths of a triangle') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '5')
    click_button('submit')
    expect(page).to(have_content('equilateral'))
  end
end
