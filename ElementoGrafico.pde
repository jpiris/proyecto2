class ElementoGrafico

{
// Atributos
   int x,y;
   int ancho, alto;
   int velX,velY;
   color c;
   
   // Constructor de la clase
  ElementoGrafico(int posx, int posy,int an, int al,color col)
  { 
     x=posx;
     y=posy;
     ancho=an;
     alto=al;
     int velInicial1=(int)random(1,3);
     int velInicial2=(int)random(1,3);
     velX=velInicial1;
     velY=velInicial2;
     
     c=col;
  }
   ElementoGrafico()
  { 
     x=0;
     y=0;
     ancho=40;
     alto=40;
     velX=1;
     velY=1;
     
     c=color(255,255,255);
  }
  
  void avanzar()
  { 
     x=x+velX;
     y=y+velY;
  
  if((x<=0)|(x>=width))
     velX=velX*(-1);
   if((y<=0)|(y>=height))
     velY=velY*(-1);   
  }
  
  void avanzar(int x1,int y1)
  { 
     x=x1;
     y=y1;
  }
  
  boolean colision (ElementoGrafico ene)
  {  boolean col=false;
     Ellipse2D.Float elipse= new Ellipse2D.Float(x,y,ancho,alto);
     Rectangle2D.Float elipse2= new Rectangle2D.Float(ene.x,ene.y,ene.ancho,ene.alto);
     col=elipse.intersects(elipse2);
     return col;
  }
  void dibujar()
 {   ;
   }
 boolean pertenece(int px, int py)
    { 
      boolean siPertenece=false;
      
      if ((px>=x)&&(px<=(x+ancho)))
     {  if ((py>=y)&&(py<=(y+alto)))
         { //return true;}
           siPertenece=true;}
     }
     else { //return false;}
            siPertenece=false;}
     
     return siPertenece;
    }// fin pertenece
}