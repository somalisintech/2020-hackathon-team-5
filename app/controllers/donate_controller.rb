class DonateController < ApplicationController
  def index
    # @initial_foodbanks = Search::Foodbank.new("").initial_find
    # gon.your_array = @initial_foodbanks
    return if params[:donateSearch].to_s.strip.empty?

    @foodbank = Search::Foodbank.new(params[:donateSearch]).find
    @donations = @foodbank.pluck(:needs)
    gon.your_array = @donations
  end
end
