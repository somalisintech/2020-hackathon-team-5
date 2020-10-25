class DonateController < ApplicationController
  def index
    # @initial_foodbanks = Search::Foodbank.new("").initial_find
    # gon.your_array = @initial_foodbanks
    return unless params[:search]
    @foodbank = Search::Foodbank.new(params[:search]).find
    gon.your_array = @foodbank
  end
end
