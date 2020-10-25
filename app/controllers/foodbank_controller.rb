require 'gon'
class FoodbankController < ApplicationController

  # def search
  #   if params[:search].blank?  
  #     redirect_to('foodbank/index', alert: "Empty field!") and return  
  #   else  

  #   end  
  # end

  def index
    @initial_foodbanks = Search::Foodbank.new("").initial_find
    gon.your_array = @initial_foodbanks
    return unless params[:search]

    @foodbank = Search::Foodbank.new(params[:search]).find
  end
end
