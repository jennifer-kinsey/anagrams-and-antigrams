require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram, antigram, and the palindrome-age', {:type => :feature}) do
  let(:word) {String.new}
  it('processes two users inputs through the methods and returns information about the types of words they are') do
    visit('/')
    fill_in('input_1', :with => "blah")
    fill_in('input_2', :with => "hALB")
    click_button('Check')
    expect(page).to have_content('Good job')
  end

  it('processes two users inputs through the methods and returns information about the types of words they are') do
    visit('/')
    fill_in('input_1', :with => "~~")
    fill_in('input_2', :with => "!!")
    click_button('Check')
    expect(page).to have_content('no good')
  end

end
