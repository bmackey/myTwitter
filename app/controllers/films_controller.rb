class FilmsController < ApplicationController

	def index
    	@films = Film.all
  	end

  	def new
  		@film = Film.new
  	end

    def show
      @film = Film.find(params[:id])
    end

  	def create
    @film = Film.new(params[:film])
    if @film.save
        redirect_to action: 'index', notice: 'Film was successfully created.'
        flash[:success] = "Film was successfully created."
    else
        render action: "new" 
    end
  end
  
end
