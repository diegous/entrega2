module Caminacion
   def caminar
   end
end

module Nadacion
   def nadar
   end
end

module Volacion
   def volar
   end
end

module Desplazacion
   def desplazar
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
   end
end

class Perro < Mamifero
   include Caminacion

   def ladrar
   end
end

class Ballena < Mamifero 
   include Nadacion
end



class Ave < Animal
   indlude Caminacion
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
   end
end

class Cobra < Reptil
   include Desplazacion

   def morder
   end
end



class Anfibio < Animal
   include Nadacion
end

class Sapo < Anfibio
   def saltar
   end
end



class Pez < Animal
   include Nadacion
end

class Tiburon < Pez
end
