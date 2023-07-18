require_relative '../lib/first_file'
require 'nokogiri'
require 'open-uri'

RSpec.describe 'scraping' do
  it 'returns the price for a valid coin' do
    expected_output = "1 - BTCBitcoin: $30,950.66\n"
    expect { scraping('BTCBitcoin') }.to output(expected_output).to_stdout
  end
=begin
  it 'prints "Coin not found." for an invalid coin' do
    expected_output = "Coin not found.\n"
    expect { scraping('InvalidCoin') }.to output(expected_output).to_stdout
  end
=end
