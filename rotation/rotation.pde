float r = 40;
float R0 = 250;
float X0 = 400;
float Y0 = 400;
int N = 10;
int flag = 0;


float x = X0;
float y = Y0 - R0;

void setup() {
  frameRate(2);//1秒間に何回画面を更新するか．
  size(800, 800);
}

void draw() { 
  background(255);
  
  flag += 1;
  if(flag %2 == 0){
    for(int i = 0; i < N; i++){
      x = X0 + R0 * cos(2 * PI / N * i);
      y = Y0 + R0 * sin(2 * PI / N * i);
      stroke(0, 0, 0);
      fill(0, 0, 0);
      circle(x, y , r);
    }
  }else{
    for(int i = 0; i < N; i++){
      x = X0 + R0 * cos(2 * PI / N * i + 2 * PI / N / 2);
      y = Y0 + R0 * sin(2 * PI / N * i + 2 * PI / N / 2);
      stroke(0, 0, 0);
      fill(0, 0, 0);
      circle(x, y , r);
    }
  }
}
