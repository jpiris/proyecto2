class Estado
{    
   // atributos de la clase estado y nivel del juego
   int estadoApli;
  
   
   Cronometro cronoEstado;
   
   /* constructor de la clase crea un objeto inicial de la clase
   **/
   
   Estado (int e)
   {   estadoApli=e;
       
       cronoEstado= new Cronometro();
   }
   /* Método para recuperar el estado actual
   **/
   int getEstado()
   {   return estadoApli;
   }
   
   
   Cronometro getCronoEstado()
   {   return cronoEstado;
   }
   /* Método para cambiar el estado de la aplición el nuevo
      estado debe ser igual al estado actual +1
   **/
   void setEstado(int nuevoEstado)
   {   
          
           estadoApli=nuevoEstado;
        
   }
   
}
   
   
   