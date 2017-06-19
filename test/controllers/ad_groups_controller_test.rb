require 'test_helper'

class AdGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_group = ad_groups(:one)
  end

  test "should get index" do
    get ad_groups_url, as: :json
    assert_response :success
  end

  test "should create ad_group" do
    assert_difference('AdGroup.count') do
      post ad_groups_url, params: { ad_group: { campaign_id: @ad_group.campaign_id, name: @ad_group.name, status: @ad_group.status } }, as: :json
    end

    assert_response 201
  end

  test "should show ad_group" do
    get ad_group_url(@ad_group), as: :json
    assert_response :success
  end

  test "should update ad_group" do
    patch ad_group_url(@ad_group), params: { ad_group: { campaign_id: @ad_group.campaign_id, name: @ad_group.name, status: @ad_group.status } }, as: :json
    assert_response 200
  end

  # test "should destroy ad_group" do
  #   assert_difference('AdGroup.count', -1) do
  #     delete ad_group_url(@ad_group), as: :json
  #   end
  #
  #   assert_response 204
  # end
end
