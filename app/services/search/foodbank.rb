require 'net/http'
require 'uri'

module Search
  class Foodbank

    def initialize params
      @search_query = params
    end

    def find
      postcode = sanitize_address
      return unless postcode

      uri = URI.parse("https://www.givefood.org.uk/api/1/foodbanks/search/?address=#{postcode}")
      responses = HTTParty.get(uri)
      return unless responses

      results(responses)
    end

    def sanitize_address
      pc = UKPostcode.parse(@search_query)
      @search_query if pc.valid?
    end

    def results responses
      results = []
      responses.each do |response|
        result = {}
        result[:name] = response["name"]
        result[:latt_long] = response["latt_long"]
        result[:post_code] = response["postcode"]
        result[:distance_mi] = response["distance_mi"]
        result[:charity_register_url] = response["charity_register_url"]
        result[:needs] = response["needs"].to_s
        result[:phone] = response["phone"]
        result[:address] = response["address"]
        result[:closed] = response["closed"].to_s
        result[:updated_text] = response["updated_text"]
        result[:url] = response["url"]

        results << result
      end
    end
  end
end
