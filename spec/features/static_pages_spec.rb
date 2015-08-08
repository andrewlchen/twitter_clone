require 'rails_helper'

RSpec.feature "Static Pages", :type => :feature do

  describe "#home" do
    scenario "Visiting the Home page contains the Home title" do
      visit "/"
      expect(page).to have_selector("title", :text => "Rails Tutorial Twitter Clone", visible: false)
    end 
  end

  describe "#help" do
    scenario "Visiting the Help page contains the Help title" do
      visit "/static_pages/help/"
      expect(page).to have_selector("title", :text => "Help | Rails Tutorial Twitter Clone", visible: false)
    end 
  end

  describe "#about" do
    scenario "Visiting the About page contains the About title" do
      visit "/static_pages/about/"
      expect(page).to have_selector("title", :text => "About | Rails Tutorial Twitter Clone", visible: false)
    end 
  end

end
