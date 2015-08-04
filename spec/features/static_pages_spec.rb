require 'rails_helper'

RSpec.feature "Static Pages", :type => :feature do

  def setup 
    @base_title = "Rails Tutorial Twitter Clone"
  end 

  describe "#home" do
    scenario "Visiting the Home page contains the Home title" do
      visit "/"
      expect(page).to have_selector("title", :text => "Home | #{@base_title}", visible: false)
    end 
  end

  describe "#help" do
    scenario "Visiting the Help page contains the Help title" do
      visit "/static_pages/help/"
      expect(page).to have_selector("title", :text => "Help | #{@base_title}", visible: false)
    end 
  end

  describe "#about" do
    scenario "Visiting the About page contains the About title" do
      visit "/static_pages/about/"
      expect(page).to have_selector("title", :text => "About | #{@base_title}", visible: false)
    end 
  end

  describe "#contact" do
    scenario "Visiting the Contact page contains the Contact title" do
      visit "/static_pages/contact/"
      expect(page).to have_selector("title", :text => "Contact | #{@base_title}", visible: false)
    end 
  end

end
