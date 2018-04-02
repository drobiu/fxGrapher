float zoom = 20;
float x = -500/zoom;
float increment = 0.01/zoom;
float y;

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
      line(i*zoom,7,i*zoom,-7); //those are przedziałkas
      line(7,i*zoom,-7,i*zoom);
      
      textSize(10);
      fill(200,20,20,200);
      text(int(i),(i*zoom),-11); //numbers above (przedziałkas)
      text(int(-i),10,(i*zoom));
    }
    println(i);
  }
  
   
  for (float i = x; i < 500/zoom; i = i + increment){
    
//    Example functions:
//    straight line
//    y = x;
 
//    x^2 curve
//    y = x*x;

//    an exponential function
//    y = pow(3,x);
 
y = -x*x*x - 2*x*x + 4*x -3;
    
    stroke(255,40);
    point(x*zoom, -y*zoom);
    println("x = " + x + "    y = " + y);
    x=x+increment;
    
  }
}
