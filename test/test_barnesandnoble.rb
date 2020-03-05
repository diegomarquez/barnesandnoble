# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require_relative '../lib/barnesandnoble'

class TestBarnesandnoble < Minitest::Test
  def setup
    @req = Barnesandnoble.new
  end

  def test_product_lookup
    res = @req.product_lookup(query: {
                                'Ean' => '9781593083342',
                                'ProductCode' => 'Book'
                              })
    refute_empty res.to_h
  end

  def test_get_categories
    res = @req.get_categories(query: {
                                'Ean' => '9781593083342',
                                'ProductCode' => 'Book'
                              })
    refute_empty res.to_h
  end

  def test_people_who_bought_also_bought
    skip('Does not work')
    res = @req.get_pwbab(query: {
                           'Ean' => '9780345546883',
                           'ProductCode' => 'Book'
                         })
    refute_empty res.to_h
  end

  def test_top_10
    res = @req.top_10(query: {
                        'Top10SearchDomain' => 'Book'
                      })
    refute_empty res.to_h
  end

  def test_product_search
    res = @req.product_search(query: {
                                'SearchType' => 'Book',
                                'Start' => 1,
                                'Size' => 5,
                                'ProductSort' => 'Bestselling',
                                'Keyword' => 'Deleuze'
                              })
    refute_empty res.to_h
  end

  def test_get_text_book_rental_info
    res = @req.get_text_book_rental_info(query: {
                                           'Ean' => '9781118230718'
                                         })
    refute_empty res.to_h
  end

  def test_handles_unicode_characters
    res = @req.product_lookup(query: {
                                'ProductCode' => 'Book',
                                'Ean' => '0942299663'
                              })
    assert_equal 'La Jetée', res.to_h['ProductLookupResponse']['ProductLookupResult']['Product']['Titles']['Title']['title']
  end
end
