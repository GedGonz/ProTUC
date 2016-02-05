class Usuario < ActiveRecord::Base
  belongs_to :persona
    validates :username, :presence => { message: "No puede dejarse vacío campo Usuario" }
	validates :pasword, :presence => { message: "No puede dejarse vacío campo Password" }
end
