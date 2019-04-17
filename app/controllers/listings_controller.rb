class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    #this is like a method with one positional argument and one name argument:
    #before_action(:set_listing, only: [:show, :edit, :update, :destroy])
    
    def create
        #create new listing
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
end