class HorariosController < ApplicationController
    layout :sports
    
    
    def index
        
        respond_with Horario.all
    
    end
    
    def add
        
    end
    
    def edit
        
    end
    
    def delete
        
    end
    
end