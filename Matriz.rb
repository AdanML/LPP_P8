
class Matriz
   attr_reader :numeroDeFilas
   attr_reader :numeroDeColumnas

   def initialize(numerodefilas, numerodecolumnas)
      raise TypeError if numerodefilas <= 0 and numerodecolumnas <= 0
      @numeroDeFilas = numerodefilas
      @numeroDeColumnas = numerodecolumnas
      @array = 
