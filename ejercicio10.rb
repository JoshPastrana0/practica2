numeroHash = {}
numeroHash["Maria"] = "2248-6559"
numeroHash["Pedro"] = "9845-6532"
numeroHash["Juan"] = "8265-4536"
numeroHash["Alberto"] = "7896-4514"

totalwidth = 30
presel = "Nombre".ljust(totalwidth / 2)
preser = "Celular".rjust(totalwidth / 2)

puts presel + preser
numeroHash.each do |tipoCodigo, numero|
    left = tipoCodigo.ljust(totalwidth / 2)
    right = numero.rjust(totalwidth / 2)  # Corrección aquí
    puts left + right
end 

puts "Ingrese el nombre del celular a buscar:"
nombre = gets.chomp.strip  # Se agrega strip para eliminar espacios en blanco

encontrado = false
numeroHash.each do |tipoCodigo, numero|
    if nombre == tipoCodigo
        puts "El número es: #{numero}"
        encontrado = true  # Corrección aquí
        break
    end
end

puts "No se encontró el número." unless encontrado