require 'test_helper'

class OreviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oreview = oreviews(:one)
  end

  test "should get index" do
    get oreviews_url
    assert_response :success
  end

  test "should get new" do
    get new_oreview_url
    assert_response :success
  end

  test "should create oreview" do
    assert_difference('Oreview.count') do
      post oreviews_url, params: { oreview: { review: @oreview.review, score: @oreview.score, titulo: @oreview.titulo } }
    end

    assert_redirected_to oreview_url(Oreview.last)
  end

  test "should show oreview" do
    get oreview_url(@oreview)
    assert_response :success
  end

  test "should get edit" do
    get edit_oreview_url(@oreview)
    assert_response :success
  end

  test "should update oreview" do
    patch oreview_url(@oreview), params: { oreview: { review: @oreview.review, score: @oreview.score, titulo: @oreview.titulo } }
    assert_redirected_to oreview_url(@oreview)
  end

  test "should destroy oreview" do
    assert_difference('Oreview.count', -1) do
      delete oreview_url(@oreview)
    end

    assert_redirected_to oreviews_url
  end
end
