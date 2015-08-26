require 'rails_helper'

RSpec.feature "Site Layout Test", :type => :feature do

  describe "layout links" do
    it "has all the correct links on the page" do
      visit root_path  
      expect(page).to have_selector("title", :text => "Rails Tutorial Twitter Clone", visible: false)
      expect(page).to have_link('Home', href: root_path)
      expect(page).to have_link('Twitter Clone', href: root_path)
      expect(page).to have_link('Help', href: help_path)
      expect(page).to have_link('About', href: about_path)
      expect(page).to have_link('Contact', href: contact_path)
    end 
  end

end
