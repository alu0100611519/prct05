#! /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby


require "./gcd.rb"






class Fraccion
	      attr_reader :num, :den
  
  
	    #funcion para inicializar los numeros de la fraccion
  
	      
			def initialize(num, den)
    
    
			raise ArgumentError, 'Argumento no enteros.' unless num.is_a? Interger and den.is_a? Integer
			raise ArgumentError, 'Denominador nulo.' unless dem != 0
	
	
			#creando variables de istancias para modificar los numeros leidos.
			  @num = num 
			  @den = den
		
		 
		 
			#llamamos a la funcion
			minima
    
			end
		  
		  
		  
  
			 #funcion para reducir la fraccion a la minima expresion.
			 def minima

			 div = gcd(num, den) #llamamos a la funcion gcd para sacar el comun divisor de los numeros, creamos una variable y la igualamos para poder reducir la fraccion
			 @num = @num/div
			 @den = @den/div
	 
  
  
			 end
			 
			 
			 
			#funcion to_s, devuelve la representacion de la cadena es decir la fraccion.
			def to_s
    
			#fraccion 
			 "@{num}/@{den}"
			end 
  
  
  
			
			
			#funcion para resolver una suma de fracciones, el metodo puede hacer una suma de la fraccion tanto con una fraccion como con un entero
  
			def suma(ra)
			#mensaje de error, el raise lo que evita junto con unless es que si NO se cumple salta el mensaje de error y no se realiza el metodo.
	
			  raise ArgumentError, 'Argumento no admitido', unless ra.is_a? Fraccion or ra.is_a? Interger
			  #la funcion crea un objeto de la clase Fraccion con las caracteristicas obbtenidas, dependiendo si lo que se va a sumar es un entero o otra Fraccion se hara una cosa o otra.
			  if racional.is_a? Integer
			    r = Fraccion.new(@num + @dem*ra, @den) 
			  else
			    r = Fraccion.new(@num*ra.den + @den*ra.num, @den*ra.den)
			  end
			end
  
  
  
			#funcion resta
  
  
			def resta(ra)
    
	
			  raise ArgumentError, 'Argumento no admitido', unless ra.is_a? Fraccion or ra.is_a? Interger
	
	
			  if racional.is_a? Integer
	
			    r = Fraccion.new(@num - @dem*ra, @den) 
	
			  else
	
			    r = Fraccion.new(@num*ra.den - @den*ra.num, @den*ra.den)
	
			  end
	
 
			end
  
  
			#funcion producto
  
			def producto(ra)
    
			  raise ArgumentError, 'Argumento no admitido', unless ra.is_a? Fraccion or ra.is_a? Interger
    
    
			  if racional.is_a? Integer
	
			    r = Fraccion.new(@num * @dem*ra, @den) 
	  
			  else
	
			    r = Fraccion.new(@num*ra.num , @den*ra.den)
	
			  end
  
			end
  
  
			#funcion division
  
			def division(ra)
    
			  raise ArgumentError, 'Argumento no admitido', unless ra.is_a? Fraccion or ra.is_a? Interger
    
    
    
			  if racional.is_a? Integer
	
			    r = Fraccion.new(@num , @den * ra) 
	
			  else
	
			    r = Fraccion.new(@num*ra.den, @den*ra.num)
	
			  end
  
			end

end
