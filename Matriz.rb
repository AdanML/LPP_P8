
class Matriz
   attr_reader :numeroDeFilas
   attr_reader :numeroDeColumnas

   def initialize(numerodefilas, numerodecolumnas)
      raise TypeError if numerodefilas <= 0 and numerodecolumnas <= 0
      @numeroDeFilas = numerodefilas
      @numeroDeColumnas = numerodecolumnas
      @array = Array.new(numerodefilas) {Array.new(numerodecolumnas}
   end

   def +(mat)
      raise IndexError unless (@numeroDeColumnas == mat.numeroDeColumnas && @numeroDeFilas == mat.numeroDeFilas)
      result = Matriz.new(@numeroDeFilas, @numeroDeColumnas)
      for i in 0 ... @numeroDeFilas
         for j in 0 ... @numeroDeColumnas
            result[i,j]= self[i,j] + mat[i,j]
         end
      end
   end

   def *(mat)
      raise IndexError unless @numeroDeColumnas == mat.numeroDeFilas
      result = Matriz.new(@numeroDefilas, mat.numeroDeColumnas)
      for i in 0 ... @numeroDeFilas
         for j in 0 ... mat.numeroDeColumnas
            sum = zero
            for k in 0 ... @numeroDeColumnas
               sum += self[i,k] * mat[k,j]
            end
            result[i,j] = sum
         end
      end
      return result
   end

   def 

end 
