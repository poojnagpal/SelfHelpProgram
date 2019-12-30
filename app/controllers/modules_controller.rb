class ModulesController < ApplicationController
    def index
        @programs = Program.limit(5)
    end
    
end
