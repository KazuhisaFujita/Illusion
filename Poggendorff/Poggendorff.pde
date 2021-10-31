int w = 1200; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

int dh = 40; //2本の先のズレ
float h_r = 700; //四角の縦幅
float w_r = 100; //四角の横幅
float theta = 65/180.0*PI; //線の角度
int l = 1000; //線の長さ

void settings()
{
  size(w, h);        //画面のサイズ
}

void setup()
{
  background(255,255,255);//背景の色

  strokeWeight(5); //先の太さ
  line(w/2 - l * cos(theta) / 2, h/2 - l * sin(theta) / 2, w/2 + l * cos(theta) / 2, h/2 + l * sin(theta) / 2); // 長い線
  line(w/2, h/2 + dh, w/2 + l * cos(theta) / 2, h/2 +dh + l * sin(theta) / 2); // 長い線

  strokeWeight(5); //先の太さ
  rect(w/2 - w_r/2, h/2 - h_r/2, w_r,  h_r); //四角
}
