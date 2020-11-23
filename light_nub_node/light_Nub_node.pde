import nub.primitives.*;
import nub.core.*;
import nub.processing.*;

Scene scene;
Node n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18 ;
int distacia = 100;

void setup() {
  size(1280, 720, P3D);
  // the scene object creates a default eye node
  scene = new Scene(this);
  
  // Create a top-level node (i.e., a node whose reference is null) with:
  n1 = new Node(){
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.background(0);
    }
  };
  // whereas for the remaining nodes we pass any constructor taking a
  // reference node parameter, such as Node(Node referenceNode)

  
//luz roja izquierda
  n2 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(255, 0, 0, -distacia, 0, 0);
    }
  };
  n2.setPosition(-distacia,0,0);
  
 //luz verde derecha
  n3 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(0, 255, 0, distacia, 0, 0);
    }
  };
  n3.setPosition(distacia,0,0);
  
  //luz azul arriba
  n9 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(0, 0, 255, 0, -distacia, 0);
    }
  };
  n9.setPosition(0,-100,0);
  
  //luz celeste abajo
   n4 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(0, 255, 255, 0, distacia, 0);
    }
  };
  n4.setPosition(0,distacia,0);
  
  //luz amarilla derecha arriba
   n5 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(255, 255, 0, distacia*sin(45), -distacia*sin(45), 0);
    }
  };
  n5.setPosition(distacia*sin(45), -distacia*sin(45),0);
 
  //luz morada derecha abajo
   n6 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(255, 0, 255, distacia*sin(45), distacia*sin(45), 0);
    }
  };
  n6.setPosition(distacia*sin(45), distacia*sin(45),0);
  
  //luz cafe izquierda abajo
   n7 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(128, 64, 0, -distacia*sin(45), distacia*sin(45), 0);
    }
  };
  n7.setPosition(-distacia*sin(45), distacia*sin(45),0);
  
  //luz naranja izquierda arriba
   n8 = new Node(n1) {
    // immediate mode rendering procedure
    // defines n2 visual representation
    @Override
    public void graphics(PGraphics pg) {
      pg.pointLight(255, 128, 0, -distacia*sin(45), -distacia*sin(45), 0);
    }
  };
  n8.setPosition(-distacia*sin(45), -distacia*sin(45),0);
  
  // retained-mode rendering PShape
  // defines n3 visual representation
  n10 = new Node(n1, createShape(SPHERE, 15));
  n10.setPosition(0,-60,50);
  
  n11 = new Node(n1, createShape(SPHERE, 15));
  n11.setPosition(42.5, -42.5, 0);
  
  n12 = new Node(n1, createShape(SPHERE, 15));
  n12.setPosition(60, 0, 50);
  
  n13 = new Node(n1, createShape(SPHERE, 15));
  n13.setPosition(42.5, 42.5, 0);
  
  n14 = new Node(n1, createShape(SPHERE, 15));
  n14.setPosition(0, 60, 50);
  
  n15 = new Node(n1, createShape(SPHERE, 15));
  n15.setPosition(-42.5, 42.5, 0);
  
  n16 = new Node(n1, createShape(SPHERE, 15));
  n16.setPosition(-60, 0, 50);
  
  n17 = new Node(n1, createShape(SPHERE, 15));
  n17.setPosition(-42.5, -42.5, 0);
  
  n18 = new Node(n1, createShape(SPHERE, 30));
  
  
}
void draw() {
  // the subtree param is optional
  scene.render();
}
