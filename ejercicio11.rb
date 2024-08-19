class Sum
    def initialize
      @pa = 0
      @impa = 0
    end
  
    def verificar(num)
      while num.to_i > 0
        if num % 2 == 0
          sumpa(num)
        else
          sumimpa(num)
        end
        num -= 1
      end
    end
  
    def sumpa(num)
      @pa += num
    end
  
    def sumimpa(num)
      @impa += num
    end
  
    def mostrar_resultados
      puts "La suma de los números pares es: #{@pa}"
      puts "La suma de los números impares es: #{@impa}"
    end
  end
  
  puts "Ingrese el número a sumar"
  num = gets.chomp.to_i
  
  sum_instance = Sum.new
  sum_instance.verificar(num)
  sum_instance.mostrar_resultados