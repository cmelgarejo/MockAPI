require 'spec_helper'

describe CampaignsController do
  describe 'GET /campaigns' do
    it 'Displays a list of campaigns' do
      get :index, as: :json
      puts "Displays a list of campaigns => response.status: #{response.status}"
      expect(response.status).to eq(200)
    end
  end
end
