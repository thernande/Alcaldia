class SportsController < ApplicationController
    def index
        @escenarios = Escenario.all
    end
end
