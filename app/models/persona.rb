class Persona < ActiveRecord::Base
	validates :nombre, :presence => { message: "No puede dejarse vacío campo Nombre" }
	validates :apellido, :presence => { message: "No puede dejarse vacío campo apellido" }
	validates :pais, :presence => { message: "No puede dejarse vacío campo Pais" }
	validates :email, :presence => { message: "No puede dejarse vacío campo Email" }
end
