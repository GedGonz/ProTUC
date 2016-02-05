class UsuarioController < ApplicationController
  def index
  end
  def new
  	@Usuario=Usuario.new
  	@Persona=Persona.new
  end

  def login
  	
  end

  def crear
  	  @Persona=Persona.new
  	  @Persona.nombre = param[:Nombre]
	  @Persona.apellido = param[:Apellido]
	  @Persona.pais = param[:Pais]
	  @Persona.email = param[:Email]
    @Persona.fechacrea=Time.new
	 #render :text => param

	if @Persona.save()

		@Usuario=Usuario.new
		@Usuario.username=param[:Username]
		@Usuario.pasword=param[:Password]
    @Usuario.fechacrea=Time.new
		@Usuario.persona=@Persona
    if @Usuario.save()    

	   redirect_to :action => :login
     else
    render :new
    end
	else
		render :new
	end
  	
  end


  def param
  	params.require(:persona).permit(:Nombre, :Apellido, :Pais, :Email,:Username,:Password)
  end
end
