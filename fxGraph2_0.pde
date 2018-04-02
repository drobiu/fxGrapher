int zoom = 10;
float x = -500/zoom;
float increment = 0.0005;

void setup() {
  frameRate(144);
  translate(width/2, height/2);
  size(1000, 1000);
  background(50);
  stroke(200,20,20,200);
  line(-500,0,500,0);
  line(0,-500,0,500);
  
}

void draw() {
  translate(width/2, height/2);
  
//  line(pmouseX-500, -500, pmouseX-500, 500);
//  line(-500, pmouseY-500, 500, pmouseY-500);
  
  for (float i = 5*x; i < 5*-x; i++){
    stroke(200,20,20,200);
    
    if (i != 0){
      line(i*50,7,i*50,-7);
      textSize(10);
      fill(200,20,20,200);
      text(int(i),(i*50),-11);
    }
    println(i);
  }
  
  for (float i = 5*x; i < 5*-x; i++){
    stroke(200,20,20,200);
    
    if (i != 0){
      line(7,i*50,-7,i*50);
      textSize(10);
      fill(200,20,20,200);
      text(int(-i),10,(i*50));
    }
    println(i);
  }
   
  for (float i = x; i < 500/zoom; i = i + increment){
    float y = abs(x);
    stroke(255,40);
    point(x*zoom, -y*zoom*2);
    println("x = " + x + "    y = " + y);
    x=x+increment;
  }

}