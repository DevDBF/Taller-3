void setup(){
  size(500, 500, P3D);
}  

void draw(){
  
  background(50);
  noStroke();

  //ambientLight(102, 102, 102);
  //pointLight(102, 102, 102, 100, 100, 500);
  
  directionalLight(102, 102, 102, -1, 1, -1);
  //lightSpecular(202, 202, 202);

  translate(220, 250, 300);
  //specular(102, 102, 102);
  sphere(30);
  
  directionalLight(102, 102, 102, -1, 1, -1);
  //lightSpecular(102, 102, 102);
  
  translate(60, 0, 0);
  //specular(50, 50, 50);
  sphere(30);

}
