float theta = 0; //角度
float omega = 0.5;//回転の角速度
int phi_m = 400;//円運動している円の直径
float d = 2; //円運動の運動半径
int phi_s = 400;//固定している円の直径

void setup() {
  size(800, 800); //ウインドウの大きさ
  background(196); //背景色
  frameRate(30); //フレームレート（１秒間に何枚絵を書くか）
  noStroke();  
}

void draw() { 
  theta+=omega;
  background(196);
  fill(0);
  ellipse(400 + d*cos(theta),400 + d*sin(theta), phi_m, phi_m);
  
  fill(255);
  ellipse(400,400, phi_s, phi_s);
}
