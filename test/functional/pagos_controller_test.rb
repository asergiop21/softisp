require 'test_helper'

class PagosControllerTest < ActionController::TestCase
  test "should get resumen" do
    get :resumen
    assert_response :success
  end

end
