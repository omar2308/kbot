class Factura
    def initialize(cantidad, precio)
        @impuesto_porc = 0.0825
        @precio = precio.to_i
        @dscto= 0
        @subtotal = 0

        @cantidad = cantidad.to_i
        @calcular = is_number?(cantidad)
    end

    def is_number?(obj)
        return true if Integer(obj) rescue false
    end

    def calcular_dscto()
        case @subtotal
        when 0..1000
            @dscto = 0
        when 1000..5000
            @dscto = @subtotal*0.03
        when 5000..7000
            @dscto = @subtotal*0.05
        when 7000..10000
            @dscto = @subtotal*0.07
        when 10000..50000
            @dscto = @subtotal*0.10
        when 50000..
            @dscto = @subtotal*0.15
        end
    end

    def resultado()
        if (@calcular)
            @subtotal = @cantidad*@precio
            impuesto = @subtotal*@impuesto_porc
            calcular_dscto()

            #puts "subtotal: #{@subtotal}, impuesto: #{impuesto}, dscto: #{@dscto}"
            total = @subtotal + impuesto - @dscto
            puts "#{total}"
        else
            puts "Error: cantidad debe ser entero"
        end
    end
end


factura= Factura.new(ARGV[0], ARGV[1])
factura.resultado
