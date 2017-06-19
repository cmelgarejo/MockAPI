require 'spec_helper'

describe ExpandedTextAdsController do
  describe 'GET /ad_groups' do
    it 'Displays a list of Expanded Text of Ads' do
      get :index, as: :json
      puts "Displays a list Expanded Text of Ads => response.status: #{response.status}"
      expect(response.status).to eq(200)
    end
  end
end
