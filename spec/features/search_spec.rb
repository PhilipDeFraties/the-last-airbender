require 'rails_helper'

RSpec.describe 'Search for members of a nation in ATLA' do
  describe "As a user, when I visit the home page" do
    describe "And I Select 'Fire Nation' from the select field" do
      describe "And I click 'Search For Members'" do
        before :each do
          visit '/'
          select "Fire Nation", :from => "nation"
          click_on 'Search For Members'
        end
        it "I am redirected to a results page where I see number of results" do
          

        end

        it "I see a list of detailed info for each result" do

        end
      end
    end
  end
end
