class SectionsController < ApplicationController
    def section_params
        params.require(:section).permit(:name, :description)
    end

    def show
        id = params[:id] # retrieve program ID from URI route
        @section = Section.find(id)
    end

    def new
        # default: render 'new' template
    end

end
    

