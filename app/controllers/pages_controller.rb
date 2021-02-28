class PagesController < ApplicationController
  def home
    @listings = Listing.all.order(created_at: :desc) 
    @results = []
    @listings.each_with_index do |item, index|
        @results << item
        if @results.length >= 4
        return @results
        end
      end
    end
  end
