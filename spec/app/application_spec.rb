require 'spec_helper_capybara'

feature 'Sports Ladder Ladder Page' do

  it 'should display a title' do
    visit '/'
    expect(page).to have_title 'TODO Page title'
  end

  it 'should display a motivational starting point', :js => true do
    visit '/'
    expect(page).to have_content 'Implement something'
  end

end