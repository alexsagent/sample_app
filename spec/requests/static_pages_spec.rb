require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { get 'home_page/home'}
    expect(page).to have_content('Sample App')
    # it "should have the content 'Sample App'" do
    #   get '/static_pages/home'
    #   #expect(response).to have_content('Sample App')
    #   expect(response).to have_content('Sample App')
    # end
  end
end
