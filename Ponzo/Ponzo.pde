int w = 1200; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

int m = 200; //余白
float l =  w - m*2; //長さ
float theta = 10/180.0*PI; //辺の角度

float l1 = 100; //棒1の長さ
float l2 = 100; //棒2の長さ
float x0 = l/3; //棒1の場所
float dx = l/3; //棒間の距離

void settings()
{
  size(w, h);  //画面のサイズ
}

void setup()
{
  background(255,255,255);//背景の色

  strokeWeight(2);
  line(m, h/2, m + l * cos(theta) , h/2 + l * sin(theta)); //斜め線
  line(m, h/2, m + l * cos(-theta), h/2 + l * sin(-theta));//斜め線

  line(m + x0, h/2 - l1/2, m + x0, h/2 + l1/2); //棒1
  line(m + x0 + dx, h/2 - l2/2, m + x0 + dx, h/2 + l2/2); //棒2
}
