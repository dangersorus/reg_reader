require 'test_helper'

class UserLinksControllerTest < ActionController::TestCase
  setup do
    @user_link = user_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_links)
  end


  test "should create user_link" do
    assert_difference('UserLink.count') do
      post :create, user_link: {  }
    end

    assert_redirected_to user_link_path(assigns(:user_link))
  end

  test "should destroy user_link" do
    assert_difference('UserLink.count', -1) do
      delete :destroy, id: @user_link
    end

    assert_redirected_to user_links_path
  end
end
