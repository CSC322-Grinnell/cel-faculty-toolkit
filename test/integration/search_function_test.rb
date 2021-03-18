require "test_helper"

class SearchFunctionTest < ActionDispatch::IntegrationTest
  
  # https://stackoverflow.com/questions/1574797/how-to-load-dbseed-data-into-test-database-automatically
  def setup
    Rails.application.load_seed
  end

  test "search anti-racism should equal 1" do
    get index_path, params: { query: "anti-racism", commit: "Search" }
    assert_equal(1, assigns(:toolkits).length)
  end

  test "blank search should equal nil" do
    get index_path, params: { query: "", commit: "Search" }
    assert_nil assigns(:toolkits)
  end

  test "search community should equal 25" do
    get index_path, params: { query: "community", commit: "Search" }
    assert_equal(25, assigns(:toolkits).length)
  end

  test "search punctuation should equal 0" do
    get index_path, params: { query: ".", commit: "Search" }
    assert_equal(0, assigns(:toolkits).length)
  end

end
