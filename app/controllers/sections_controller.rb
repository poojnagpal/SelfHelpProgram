class SectionsController < ApplicationController
    def section_params
        params.require(:section).permit(:name, :description)
    end

    def show
        @id = params[:id] # retrieve program ID from URI route
        @section = Section.find(@id)
    end

    def new
        # default: render 'new' template
    end

    def update
        id = params[:id]
        id = id.to_i + 1
        @section = Section.find(id)
    end

end
    

