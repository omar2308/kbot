def is_number?(obj)
    true if Integer(obj) rescue false
end

impuesto = 0.0825
precio = 10
cantidad = ARGV[0].to_i
calcular_total = is_number? ARGV[0]

if(calcular_total)
    total= cantidad*precio*(1 + impuesto)
    puts "#{total}"
else
    puts "Error: cantidad debe ser entero"
end
