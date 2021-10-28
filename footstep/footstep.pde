int x = 0;
int T = 200;//棒の動く周期

void setup() {
  size(1024, 728); //ウインドウの大きさ
  background(255);
  frameRate(24);//フレームレート（１秒間に何枚絵を書くか）
  noStroke();  
}

void lattice()
{//格子の描画
  background(255);
  fill(0);
  int w = 5;//格子の幅
  for(int i = 0; i < 200; i ++){
      rect(i*w*2, 0, w, height);  
  }
}

void rectangles()
{
  x++;  

  int w = 60;//バーの幅
  for(int i = 0; i < 20; i++){
    fill(64);//動くバーの色1
    rect(x + i*T - 200, 100, w, 200);
    fill(220);//動くバーの色2
    rect(x + i*T - 200, 400, w, 200);
  }
  
  if(x == T){
    x = 0;
  }
}

void draw() { 
  lattice();
  rectangles();
}
