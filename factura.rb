class Factura
    def initialize(cantidad)
        @impuesto_porc = 0.0825
        @precio = 10
        @dscto_1= 0.03
        @cantidad = cantidad.to_i
        @calcular = is_number?(@cantidad)
    end

    def is_number?(obj)
        return true if Integer(obj) rescue false
    end

    def resultado()
        if (@calcular)
            subtotal = @cantidad*@precio
            impuesto = subtotal*@impuesto_porc
            dscto = (subtotal > 1000) ? subtotal*@dscto_1 : 0

            #puts "subtotal: #{subtotal}, impuesto: #{impuesto}, dscto: #{dscto}"
            total = subtotal + impuesto - dscto
            puts "#{total}"
        else
            puts "Error: cantidad debe ser entero"
        end
    end
end


factura= Factura.new(ARGV[0])
factura.resultado
