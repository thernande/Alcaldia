class Escenario < ActiveRecord::Base
    validates_presence_of :nombre, :descripcion, :imagen
end