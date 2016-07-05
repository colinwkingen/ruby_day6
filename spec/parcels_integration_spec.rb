require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('parcels path', {:type => :feature}) do
  it('takes size and weight inputs and calculates the shipping value') do
    visit('/parcels')
    fill_in('side_one', :with => '2')
    fill_in('side_two', :with => '2')
    fill_in('side_three', :with => '2')
    fill_in('weight', :with => '6')
    click_button('Submit')
    expect(page).to have_content('12')
  end
end
