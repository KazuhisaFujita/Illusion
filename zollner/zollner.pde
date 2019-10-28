int h_size = 1600; //横線の長さ
size(1600, 800);   //ウインドウサイズ
background(255,255,255); //背景色
strokeWeight(4); //線の太さ

int v_interval = 80; //横線の間隔
int h_interval = 80; //斜め線の間隔

int L      = 70; //斜め線の長さ
int degree = 20; //斜め先の角度
int X = int(L * cos(radians(degree)));
int Y = int(L * sin(radians(degree)));

for(int n = 0; n < 20; n+=2){
  int v = 50 + v_interval * n;
  line(0, v, h_size, v);
  for(int i = 0; i < 200; i++){
    line(-70 - X/2 + i * h_interval, v + Y/2, -70 + X/2 + i * h_interval, v  - Y/2);
  }

  v += v_interval;
  line(0, v, h_size, v);
  for(int i = 0; i < 200; i++){
    line(-70 + X/2 + i * h_interval, v + Y/2, -70 - X/2 + i * h_interval, v  - Y/2);
  }
}
