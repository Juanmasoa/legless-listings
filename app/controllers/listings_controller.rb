class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    #this is like a method with one positional argument and one name argument:
    #before_action(:set_listing, only: [:show, :edit, :update, :destroy])
    
    def create
        #create new listing
        #we grab all the parameters that refers to the listing
        @listing = Listing.create(new_params)
    end


    def index
        #shows all listings
        @listings = Listing.all 
    end

    def update 
        #updates the current listing
        
    end

    def edit
        #show the edit
    end

    def destroy
        #deletes current listing
        
    end

    def new 
        #shows form for creating a new listing
        @listing = Listing.new
        @breeds = Breed.all 
        @sexes = Listing.sexes.keys
    end

    def show 
        #shows a single listing
        #params is a hash, so we still access a hash
        
    end

    private 
    #everything underneath this private word is not accessible outside of the object

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :date_of_birth, :diet)
    end
end