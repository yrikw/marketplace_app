class PagesController < ApplicationController
  def home
  #Show new item list (4 items)
     @listings = Listing.all.order(created_at: :desc) 
     @results = []
     @listings.each_with_index do |item, index|
        @results << item
        if @results.length >= 4
        return @results
        end
      end
  end

  # Payment
  def payment_success
    pp params
    listing_id = params[:listingId]

    @listing = Listing.find(listing_id)
    @purchase = Order.find_by_listing_id(listing_id)
  end
end
