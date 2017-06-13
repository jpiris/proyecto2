class Pagina extends ElementoGrafico
{   

  Dibujo fondo;
  Dibujo [] dibus;
  Texto [] textos;
  // ElementoGrafico [] grafoEscena;
  ElementoGrafico [] botones;
  Estado estadoPagina;

  Pagina(int x, int y, int ancho, int alto, color c, String f, 
    Dibujo [] d, Texto [] t, ElementoGrafico [] bot)
  {      
    super(x, y, ancho, alto, c);
    dibus=d;
    textos=t;
    fondo=new Dibujo(x,y,ancho,alto,c,f);
    botones=bot;
    estadoPagina=new Estado(0);
    
  }
  void iniciar()
  {;
  }
  void dibujar()
  {   // primero dibujo el fondo
      fondo.dibujar();
      for(int i=0; i<dibus.length ; i++)
      { dibus[i].dibujar();
      }
      for(int j=0; j<textos.length ; j++)
      { textos[j].dibujar();
      }
      for(int j=0; j<botones.length ; j++)
      { botones[j].dibujar();
      }
      
      // 
  }
  
  
}
  