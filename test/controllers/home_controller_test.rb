require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    p login accounts(:one)

    get root_url
    assert_response :success
  end

  def login(account)
    post "/login", as: :json, params: {login: account.email, password: "password"}
  end
end
