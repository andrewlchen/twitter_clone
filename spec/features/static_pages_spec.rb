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
      visit "/help/"
      expect(page).to have_selector("title", :text => "Help | Rails Tutorial Twitter Clone", visible: false)
    end 
  end

  describe "#about" do
    scenario "Visiting the About page contains the About title" do
      visit "/about/"
      expect(page).to have_selector("title", :text => "About | Rails Tutorial Twitter Clone", visible: false)
    end 
  end

  describe "#contact" do
    scenario "Visiting the Contact page contains the Contact title" do
      visit "/contact/"
      expect(page).to have_selector("title", :text => "Contact | Rails Tutorial Twitter Clone", visible: false)
    end 
  end

end
