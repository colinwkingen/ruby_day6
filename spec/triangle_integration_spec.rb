require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('takes input from a field and checks whether the angles make a triangle') do
    visit('/triangles')
    fill_in('side_one', :with => '4')
    fill_in('side_two', :with => '4')
    fill_in('side_three', :with => '4')
    click_button('Submit')
    expect(page).to have_content('Equilateral')
  end
  it('takes input from a field and checks whether the angles make a triangle') do
    visit('/triangles')
    fill_in('side_one', :with => '2')
    fill_in('side_two', :with => '4')
    fill_in('side_three', :with => '4')
    click_button('Submit')
    expect(page).to have_content('Isosceles')
  end
  it('takes input from a field and checks whether the angles make a triangle') do
    visit('/triangles')
    fill_in('side_one', :with => '4')
    fill_in('side_two', :with => '5')
    fill_in('side_three', :with => '6')
    click_button('Submit')
    expect(page).to have_content('Scalene')
  end
end
