require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
	describe "full title helper" do
		it "works correctly using full_title helper" do 
	    expect(full_title).to eq("Rails Tutorial Twitter Clone") 
	    expect(full_title("Help")).to eq("Help | Rails Tutorial Twitter Clone") 
	  end 
  end

end
