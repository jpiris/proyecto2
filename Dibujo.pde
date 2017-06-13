class Dibujo extends ElementoGrafico
{  // Atributos de la clase Dibujo diferentes de los heredados de la clase ElementoGrafico
      PImage imagen;
      boolean esImagen;
    Dibujo( int x, int y, int ancho, int alto, color c)
     {   super(x,y,ancho,alto,c);
         esImagen=false;
         
     }
     
     Dibujo( int x, int y, int ancho, int alto, color c,String nombreFichero)
     {   super(x,y,ancho,alto,c);
         esImagen=true;
         imagen=loadImage(nombreFichero);
         imagen.resize(ancho,alto);
       }
     void dibujar()
     { 
       if( esImagen==false)
       {fill(c);
       rect(x,y,ancho,alto);}
       else 
       {    
            image(imagen,x,y);  }
     }
}