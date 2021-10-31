int w = 1200; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

float x = 0; //動く棒の位置
int T = 200;//棒の動く周期
int w_l = 5;//格子の幅
int w_b = 60;//バーの幅
int h_b = 200;//バーの高さ
int color_bar1 = 64; //バーの色
int color_bar2 = 220; //バーの色
float v = 1; //バーの移動速度
int d_bar = 200; //バーとバーの間隔

void setup() {
  surface.setSize(w, h);
  background(255); //背景色
  frameRate(30); //フレームレート（１秒間に何枚絵を書くか）
  noStroke();  
}

void lattice()
{//格子の描画
  background(255);
  fill(0);
  for(int i = 0; i < 200; i ++){
      rect(i*w_l*2, 0, w_l, height);  
  }
}

void rectangles()
{
  x+= v;  

  for(int i = 0; i < 20; i++){
    fill(color_bar1);//動くバーの色1
    rect(x + i*T - 200, h/2 - d_bar/2 - h_b, w_b, h_b);
    fill(color_bar2);//動くバーの色2
    rect(x + i*T - 200, h/2 + d_bar/2, w_b, h_b);
  }
  
  if(x == T){
    x = 0;
  }
}

void draw() { 
  lattice();
  rectangles();
}
