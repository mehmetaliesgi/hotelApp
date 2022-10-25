class AdminController < ApplicationController
    layout "admin"

    def index

    end
    
    def room
        @rooms = Room.all
    end


end
