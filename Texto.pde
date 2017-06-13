class Texto extends ElementoGrafico
{   // atributos adicionales al del padre
  String texto;
  // tamanyo del texto
  int tam;
  PFont fuente;

  Texto( int x, int y, int ancho, int alto, color c, int t, String text,String f)
  {   
    super(x, y, ancho, alto, c);
    tam=t;
    fuente = createFont(f,tam);
    texto=text;
  }

  void dibujar()
  { 
      
      fill(c);
      textFont(fuente);
      
      text(texto, x, y, ancho, alto);
      
    }
  }