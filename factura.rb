def is_number?(obj)
    true if Integer(obj) rescue false
end

impuesto_porc = 0.0825
precio = 10
dscto_1= 0.03
cantidad = ARGV[0].to_i

subtotal = cantidad*precio

impuesto = subtotal*impuesto_porc
dscto = (subtotal > 1000) ? subtotal*dscto_1 : 0
puts "subtotal: #{subtotal}, impuesto: #{impuesto}, dscto: #{dscto}"

total = subtotal + impuesto - dscto

mostrar_total = is_number? ARGV[0]

if(mostrar_total)
    puts "#{total}"
else
    puts "Error: cantidad debe ser entero"
end
