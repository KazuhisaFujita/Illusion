float x = 0; //動く棒の位置
int T = 200;//棒の動く周期
int w_l = 5;//格子の幅
int w_b = 60;//バーの幅
int color_bar1 = 64; //バーの色
int color_bar2 = 220; //バーの色
float v = 1; //バーの移動速度

void setup() {
  size(1024, 728); //ウインドウの大きさ
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
    rect(x + i*T - 200, 100, w_b, 200);
    fill(color_bar2);//動くバーの色2
    rect(x + i*T - 200, 400, w_b, 200);
  }
  
  if(x == T){
    x = 0;
  }
}

void draw() { 
  lattice();
  rectangles();
}
