require 'spec_helper'

describe AdGroupsController do
  describe 'GET /ad_groups' do
    it 'Displays a list of Ad groups' do
      get :index, as: :json
      puts "Displays a list of ad groups => response.status: #{response.status}"
      expect(response.status).to eq(200)
    end
  end
end
