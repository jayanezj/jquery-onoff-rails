require 'test_helper'

class JqueryOnoffRailsTest < ActionDispatch::IntegrationTest

  test "Load engine" do
    assert_equal ::Rails::Engine, Onoff::Rails::Engine.superclass
  end

  test "Spanish Stylesheet found" do
    get "/assets/jquery.onoff-es"
    assert_onoff(response)
  end

  test "English Stylesheet found" do
    get "/assets/jquery.onoff-en"
    assert_onoff(response)
  end

  test "JavaScript found" do
    get "/assets/jquery.onoff.js"
    assert_onoff(response)
  end

  test "Stylesheet is available in a css sprockets require" do
    get "/assets/sprockets-require.css"
    assert_onoff(response)
  end

  test "Stylesheet is available in a sass import" do
    get "/assets/sass-import.css"
    assert_onoff(response)
  end

  test "Stylesheet is available in a scss import" do
    get "/assets/scss-import.css"
    assert_onoff(response)
  end

  test "JavaScript is available in a JS require" do
    get "/assets/javascript-require.js"
    assert_onoff(response)
  end

  test "helpers should be available in the view" do
    get "/switchers"
    assert_response :success
    assert_select "div.onoffswitch"
    assert_select "input.onoffswitch-checkbox"
    assert_select "label.onoffswitch-label"
    assert_select "span.onoffswitch-inner"
    assert_select "span.onoffswitch-switch"
  end

  test "extra options should be passed to checkbox" do
    get "/checked_switcher"
    assert_response :success
    assert_select "input.onoffswitch-checkbox[checked]"
  end


  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_onoff(response)
    assert_response :success
    assert_match(/.onoffswitch/, response.body)
  end
end
