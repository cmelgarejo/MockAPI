require 'test_helper'

class ExpandedTextAdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expanded_text_ad = expanded_text_ads(:one)
  end

  test "should get index" do
    get expanded_text_ads_url, as: :json
    assert_response :success
  end

  test "should create expanded_text_ad" do
    assert_difference('ExpandedTextAd.count') do
      post expanded_text_ads_url, params: { expanded_text_ad: { ad_group_id: @expanded_text_ad.ad_group_id, description: @expanded_text_ad.description, headline_part1: @expanded_text_ad.headline_part1, headline_part2: @expanded_text_ad.headline_part2, path1: @expanded_text_ad.path1, path2: @expanded_text_ad.path2, xsi_type: @expanded_text_ad.xsi_type } }, as: :json
    end

    assert_response 201
  end

  test "should show expanded_text_ad" do
    get expanded_text_ad_url(@expanded_text_ad), as: :json
    assert_response :success
  end

  test "should update expanded_text_ad" do
    patch expanded_text_ad_url(@expanded_text_ad), params: { expanded_text_ad: { ad_group_id: @expanded_text_ad.ad_group_id, description: @expanded_text_ad.description, headline_part1: @expanded_text_ad.headline_part1, headline_part2: @expanded_text_ad.headline_part2, path1: @expanded_text_ad.path1, path2: @expanded_text_ad.path2, xsi_type: @expanded_text_ad.xsi_type } }, as: :json
    assert_response 200
  end

  # test "should destroy expanded_text_ad" do
  #   assert_difference('ExpandedTextAd.count', -1) do
  #     delete expanded_text_ad_url(@expanded_text_ad), as: :json
  #   end
  #
  #   assert_response 204
  # end
end
