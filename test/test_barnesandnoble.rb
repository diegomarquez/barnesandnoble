require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/barnesandnoble'

class TestBarnesAndNoble < Minitest::Unit::TestCase
  def setup
    @req = BarnesAndNoble::Request.new
  end

  def test_product_lookup
    res = @req.get('ProductLookup', {
      'Ean' => '9781593083342',
      'ProductCode' => 'Book'
    })

    refute_empty res.to_h
  end

  def test_get_categories
    res = @req.get('GetCategories', {
      'Ean' => '9781593083342',
      'ProductCode' => 'Book'
    })

    refute_empty res.to_h
  end

  def test_people_who_bought_also_bought
    skip

    # The query is correct, but this method doesn't seem to be working

    res = @req.get('GetPwbab', {
      'Ean' => '9780345546883',
      'ProductCode' => 'Book'
    })

    refute_empty res.to_h
  end

  def test_top_10
    res = @req.get('Top10', {
      'Top10SearchDomain' => 'Book'
    })

    refute_empty res.to_h
  end

  def test_product_search
    res = @req.get('ProductSearch', {
      'SearchType' => 'Book',
      'Start' => 1,
      'Size' => 5,
      'ProductSort' => 'Bestselling',
      'Keyword' => 'Deleuze'
    })

    refute_empty res.to_h
  end
end