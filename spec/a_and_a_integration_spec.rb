require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram, antigram, and the palindrome-age', {:type => :feature}) do
  it('processes two users inputs through the methods and returns information about the types of words they are') do
    visit('/')
    fill_in('input_1', :with => "blah")
    fill_in('input_1', :with => "hALB")
    click_button('Check')
    expect(page).to have_content('Good job')
  end

end
