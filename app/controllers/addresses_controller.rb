class AddressesController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]
	
	def index
		@addres = Address.all
	end
	
	def new
		@addres = Address.new
	end

	def show
  	end

  	def edit
  	end
	
	def create
		@addres = Address.new(addres_params)
	    if @addres.save
	      redirect_to @addres, notice: 'Address was successfully created.'
	    else
	      render :new
	    end
	end

	def update
	    if @addres.update(addres_params)
	      redirect_to @addres, notice: 'Address was successfully updated.'
	    else
	      render :edit
	    end
  	end

	def destroy
		@addres.destroy
	    redirect_to address_url, notice: 'Address was successfully destroyed.'
	end

	private
	def set_product
    	@addres = Address.find(params[:id])
  	end

	def addres_params
		params.require(:address).permit!		
	end
end
