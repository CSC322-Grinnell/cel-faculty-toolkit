require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Community Engaged Learning Toolkit"
  end
  
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get glossary" do
    get glossary_path
    assert_response :success
    assert_select "title", "Glossary | #{@base_title}"
  end

  test "should get search" do
    get search_path
    assert_response :success
    assert_select "title", "Search | #{@base_title}"
  end

  test "should get faq" do
    get faq_path
    assert_response :success
    assert_select "title", "FAQ | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get what_is_cel" do
    get what_is_cel_path
    assert_response :success
    assert_select "title", "What is CEL | #{@base_title}"
  end

  test "should get community_partnerships" do
    get community_partnerships_path
    assert_response :success
    assert_select "title", "Community Partnerships | #{@base_title}"
  end

  test "should get course_design" do
    get course_design_path
    assert_response :success
    assert_select "title", "Course Design | #{@base_title}"
  end

  test "should get implementation" do
    get implementation_path
    assert_response :success
    assert_select "title", "Implementation | #{@base_title}"
  end

  test "should get assessment" do
    get assessment_path
    assert_response :success
    assert_select "title", "Assessment | #{@base_title}"
  end

  test "should get professional_dev" do
    get professional_dev_path
    assert_response :success
    assert_select "title", "Professional Development | #{@base_title}"
  end
  
  test "should get partners" do
    get partners_path
    assert_response :success
    assert_select "title", "Partners | #{@base_title}"
  end
  
    test "should get syllabi" do
    get syllabi_path
    assert_response :success
    assert_select "title", "Syllabi | #{@base_title}"
  end

end
