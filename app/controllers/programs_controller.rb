class ProgramsController < ApplicationController
    before_action :authenticate_user!

    # def program_params
    #     params.require(:program).permit(:name, :description)
    # end
  
   
    def index
        @program = Program.limit(4)
    end

    def show
        @id = params[:id] # retrieve program ID from URI route
        @program = Program.find(@id)
        @sections = Section.where('user_id' => @id)
        puts "User name: #{@sections}"

    end

    def leadership

    end

    def new
        # default: render 'new' template
    end
        
    # def new
    #     respond_to do |format|
    #     format.html
    #     format.js
    #     end
    # end


    # def create
    #     @program = Program.create!(program_params)
    #     flash[:notice] = "#{@program.program_params} was successfully created."
    #     redirect_to program_path
    # end
end
