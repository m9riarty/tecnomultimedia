 // gatitos por pantalla c = cat p = pantalla
  
//  PImage c1p1
 // PImage c2p1
 // PImage c3p2
 // PImage c4p3
//  PImage c5p4
//  PImage c6p5
//  PImage c7p6
//  PImage c8p7
//  PImage c9p8
//  PImage c10p9
  
  //
String estado;
PImage cbtn;
float p1titulo, x, y, ancho, alto;
int c; // contador
  

  
  // textos
  

//  int p1activeBtn
//  int p2texto
  
  
  void setup () {
    size ( 640, 480 );
    textAlign ( CENTER, CENTER );
    textSize ( 50 ); 
    fill ( 255 );
    estado = "inicio";
    
    p1titulo = 0;
//    p1activeBtn = 0;
    
    frameRate ( 60 );
// btn_1    
    x = 30
    y = 30 
    ancho = 60
    alto = 60
     
 
  }
  
  
  void draw() {
    println("coordX: ", mouseX, "coordY", mouseY);
    if ( estado.equals("inicio") ) {
      fill ( 255 );
      rect ( 0, 0, 640, 480 );
      p1titulo = p1titulo + 0.8;
      fill ( 0 );
      textSize ( 20 );
      text( "curiosidades de gatos !! \n para quienes no saben nada de gatos", p1titulo, 150 );
      if (
      cbtn = loadImage("botoncito.jpg");
      image ( cbtn,  292, 280 );
      if ( p1titulo > 320 ){
        p1titulo = 320;
      }
    //
    } else if (estado.equals("p1") ) {
      background(50);
      text( "p1", width/2, height/2 );
    //
      c++;  //suma 1 per frame
      if( c >= 600 ){  // 60fps * 10seg = 600
      estado = "p2";
      c = 0;  //RESET DE VARIABLE CONTADOR
      }
    //
    } else if (estado.equals("p2") ) {
      background(100);
      text( "p2", width/2, height/2 );
    //
      c++;  //suma 1 per frame
      if( c >= 300 ){  // 60fps * 5seg = 300
        estado = "p3";
        c = 0;  //RESET DE VARIABLE CONTADOR
      }
    //
    } else if (estado.equals("p3") ) {
      background(150);
      text( "p3", width/2, height/2 );
    //
    } else {
      text( "no es ningun \n estado preseteado", width/2, height/2 );
    //si no es ninguna de las condiciones anteriores,
    //entonces ejecuta este bloque de codigo
    }
    println( estado );
  }
/*
  void mousePressed() {
  // circle( width/2, height/4*3, 50 );  <-- de acá salen los datos
    if( estado.equals("inicio") ){
      if (  ) {
        estado = "p1";
      }
    }
    if( estado.equals("p3") ){
     //aca falta boton cuadrado
       estado = "menu" ;
  }
}

*/
