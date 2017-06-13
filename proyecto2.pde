import java.awt.geom.*;




Pagina p1,p2;
Estado estado;
boolean b;
Cronometro cr;

void setup()
{    
  size(500, 500);
  estado=new Estado(0);
  color c=#953535;
  color c1=#16AADE;
  Texto [] textosP1=new Texto[2];
  Dibujo [] dibujosP1= new Dibujo[2];
  ElementoGrafico [] botonesPagina1=new ElementoGrafico[1];
  textosP1[0]=new Texto(100, 100, 400, 100, c1, 50, "hola cara de bola", "Bauhaus 93");
  textosP1[1]=new Texto(100, 400, 100, 100, c1, 50, "siiiiiiiii", "Algerian");
  dibujosP1[0]=new Dibujo(100,100,100, 100, c1,"cala.png");
  dibujosP1[1]=new Dibujo(0,0,100, 100, c1,"paraguas.png");
  botonesPagina1[0]=new Texto(50, 50, 100, 100, c1, 50, "pulsar", "Algerian");
  
  p1= new Pagina(0,0,width, height, c1,"dibujo1.jpg", dibujosP1, textosP1, botonesPagina1);  
   cr = new Cronometro();
   b = false;
  
}

void draw()
{ background(0);
  p1.dibujar();
  if (b) cr.dibujar();
}

void mousePressed()
{   if (p1.botones[0].pertenece(mouseX,mouseY)){
        println("has pulsado el boton");
        b = ! b;}
}