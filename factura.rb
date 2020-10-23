if(Integer(ARGV[0]) rescue false)
    cantidad= ARGV[0].to_i
    total= cantidad*10*(1 - 0.0825)
    puts "#{total}"
else
    puts "Error: cantidad debe ser entero"
end
