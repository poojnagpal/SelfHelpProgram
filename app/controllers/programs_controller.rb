class ProgramsController < ApplicationController
    def program_params
        params.require(:program).permit(:name, :description)
    end

    def index
        @program = Program.limit(5)
    end

    def show
        id = params[:id] # retrieve program ID from URI route
        @program = Program.find(id)
        @sections = Section.limit(5)
        puts "User name: #{@sections}"

    end

    def new
        # default: render 'new' template
      end


    def create
        @program = Program.create!(program_params)
        flash[:notice] = "#{@program.program_params} was successfully created."
        redirect_to program_path
    end
end
