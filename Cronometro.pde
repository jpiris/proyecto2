class Cronometro
{   
  long tiempoInicial;
  long tiempoActual;

  Cronometro()
  {   
    tiempoInicial=System.currentTimeMillis();
  }

  void reiniciar()
  {  tiempoInicial=System.currentTimeMillis();
  }
  
  
  long tiempoT()
  {    
    tiempoActual= System.currentTimeMillis()- tiempoInicial;
    return tiempoActual;
  }
  void dibujar()
  {   
       tiempoActual= System.currentTimeMillis()- tiempoInicial;
       text( tiempoActual, 20, 50);
  }
}