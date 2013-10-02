module Caminacion
  def caminar
    puts "Estoy caminando"
  end
end

module Nadacion
  def nadar
    puts "Estoy nandando"
  end
end

module Volacion
  def volar
    puts "Estoy volando"
  end
end

module Desplazacion
  def desplazar
    puts "Estoy desplazandome"
  end
end



class Animal
end



class Mamifero < Animal
end

class Hombre < Mamifero
  include Caminacion
  include Nadacion

  def hablar
    puts "Hablo."
  end
end

class Perro < Mamifero
  include Caminacion

  def ladrar
    puts "Ladro."
  end
end

class Ballena < Mamifero 
  include Nadacion
end



class Ave < Animal
  include Caminacion
end

class Aguila < Ave
  include Volacion
end

class Pinguyno < Ave
  include Nadacion
end



class Reptil < Animal
end

class Cocodrilo < Reptil
  include Caminacion
  include Nadacion
end

class Boa < Reptil
  include Desplazacion

  def consstriccion
    puts "Constricciono."
  end
end

class Cobra < Reptil
  include Desplazacion

  def morder
    puts "Muerdo."
  end
end



class Anfibio < Animal
  include Nadacion
end

class Sapo < Anfibio
  def saltar
    puts "Salto."
  end
end



class Pez < Animal
  include Nadacion
end

class Tiburon < Pez
end
