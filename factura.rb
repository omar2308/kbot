class Factura
    IMPUESTOS_ESTADOS = {'CA' => 8.25, 'UT' => 6.85, 'NV' => 8.00, 'TX' => 6.25, 'AL' => 4.00}
    def initialize(cantidad, precio, estado)
        @cantidad = cantidad
        @precio = precio
        @estado = estado

        @impuesto_estado = 0
        @dscto_rango = 0;
        @dscto= 0
        @subtotal = 0
        @total = 0
        
        @msg_error = ""
        @calcular = validar_parametros(cantidad, precio, estado)
        @precio = @precio.to_i
        @cantidad = @cantidad.to_i
    end

    def validar_parametros(cantidad, precio, estado)
        result = false;
        case
        when !(is_number? cantidad)
            @msg_error = "Cantidad debe ser un numero entero"
        when !(is_number? precio)
            @msg_error = "Precio debe ser un numero entero"
        when !(IMPUESTOS_ESTADOS.key? estado)
            @msg_error = "Solo se envia a #{IMPUESTOS_ESTADOS.keys}"
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
            @dscto_rango = 0
        when 1000..5000
            @dscto_rango = 3
        when 5000..7000
            @dscto_rango = 5
        when 7000..10000
            @dscto_rango = 7
        when 10000..50000
            @dscto_rango = 10
        when 50000..Float::INFINITY
            @dscto_rango = 15
        end
        @dscto = @subtotal*@dscto_rango/100
    end

    def calcular_subtotal()
        @subtotal = @cantidad*@precio
    end

    def calcular_impuesto()
        @impuesto_estado = IMPUESTOS_ESTADOS[@estado]
        @impuesto = @subtotal*@impuesto_estado/100
    end

    def calcular_total()
        @total = @subtotal + @impuesto - @dscto
    end

    def mostrar_reporte()
        #puts "subtotal: #{@subtotal}, impuesto: #{@impuesto}, dscto: #{@dscto}, estado: #{@estado}"
        puts "\# #{@cantidad} * #{@precio} = $#{@subtotal}"
        puts "#{@estado}(%#{@impuesto_estado}) = $#{@impuesto}"
        puts "DTO(%#{@dscto_rango}) = $#{@dscto}"
        puts "Total = $#{@total}"
    end

    def mostrar_error()
        puts "Error: #{@msg_error}"
    end

    def resultado()
        if (@calcular)
            calcular_subtotal()
            calcular_dscto()
            calcular_impuesto()
            calcular_total()
            mostrar_reporte()
        else
            mostrar_error()
        end
    end
end


factura= Factura.new(ARGV[0], ARGV[1], ARGV[2])
factura.resultado
