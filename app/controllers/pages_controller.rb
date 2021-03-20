class PagesController < ApplicationController
  def home
  # Show 4 new items 
     @listings = Listing.all.order(created_at: :desc).first(4)
  end

  # To get data from table for payment success page 
  def payment_success
    pp params
    listing_id = params[:listingId]

    @listing = Listing.find(listing_id)
    @purchase = Order.find_by_listing_id(listing_id)
  end
end
