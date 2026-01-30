require "test_helper"

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should show organization" do
    get organization_url(@organization)
    assert_response :success
  end
end
