=begin
    @description: La empresa ACME nesecita Registrar las horas 
    de trabajo de un mes X, generar en forma aleatoria valores
    entre 90 y 180.La empresa cuenta con 200 Trabajadores y maneja
    un valor de hora fijo de $1725, el programa debe llenar un 
    arreglo con los valores hora y desplegar el sgte menu:
        @opcion_1 = Renta promedio
        @opcion_2 = Renta mayor
        @opcion_3 = Renta menor
        @opcion_4 = ** tiene que estar vacia
        @opcion_5 = Salir
=end

COUNT_PERSON = 200
VALUE_HOUR = 1725

class Empresa_acme

    $hour = []

    # generar horas aleatorias
    def generate_hour
        ran = Random.new
        for i in 1..COUNT_PERSON
            ran_hours = ran.rand(90..180)
            $hour.push ran_hours
        end
    end 


    def prom_renta
        adittion = 0
        $hour.each do |h|
            renta = h * VALUE_HOUR
            adittion += renta
        end
        return adittion / COUNT_PERSON
    end

    
    def max_renta
        var_max_renta = 0
        $hour.each { |hrs| 
            renta = hrs * VALUE_HOUR
            if var_max_renta < renta
                var_max_renta = renta
            end
        }
        return var_max_renta
    end
    
    
    def min_renta
        var_min_renta = 100000000
        for i in $hour
            renta = i * VALUE_HOUR
            if var_min_renta > renta
                var_min_renta = renta
            end
        end
        return var_min_renta
    end
    

    def main
        options = ['1.. Renta promedio', '2.. Renta mayor', 
                    '3.. Renta menor', '5.. Salir']
        while true
            options.each { |op| puts op}
            puts "Ingrese la opcion"
            op = gets.to_i
            case op
            when 1
                puts "El promedio de renta: #=> $#{prom_renta()}"
            when 2
                puts "La renta mayor: #=> $#{max_renta()}"
            when 3
                puts "LA renta menor: #=> $#{min_renta()}"
            when 5
                exit
            end
        end
        
    end
    


end

ACME = Empresa_acme.new
ACME::generate_hour
ACME::main