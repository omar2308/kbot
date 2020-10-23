class Factura
    def initialize(cantidad, precio)
        @impuesto_porc = 0.0825
        @precio = precio
        @cantidad = cantidad
        @dscto= 0
        @subtotal = 0
        
        @msg_error = ""
        @calcular = validar_cantidad_y_precio()
        @precio = @precio.to_i
        @cantidad = @cantidad.to_i
    end

    def validar_cantidad_y_precio()
        result = false;
        case
        when !(is_number? @cantidad)
            @msg_error = "Cantidad debe ser un numero entero"
        when !(is_number? @precio)
            @msg_error = "Precio debe ser un numero entero"
        else
            result = true
        end
        return result
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

            puts "subtotal: #{@subtotal}, impuesto: #{impuesto}, dscto: #{@dscto}"
            total = @subtotal + impuesto - @dscto
            puts "#{total}"
        else
            puts "Error: #{@msg_error}"
        end
    end
end


factura= Factura.new(ARGV[0], ARGV[1])
factura.resultado
