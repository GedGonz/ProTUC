require 'test_helper'

class ConsultaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
