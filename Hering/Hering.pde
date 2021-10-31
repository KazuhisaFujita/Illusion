int w = 800; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

void settings()
{
  size(w, h);
}

void setup()
{
  background(255);//背景の色

  int N = 36; //集中線の数
  for(int i = 0; i < N; i++){
    line(400, 400, 400 + 600 * cos(2*PI/N*i), 400 + 600*sin(2*PI/N*i));
  }

  float d_b = 100; //2本の線の幅
  strokeWeight(5); //線の太さ
  line(w/2 - d_b/2, 0, h/2 - d_b/2,800);
  line(w/2 + d_b/2, 0, h/2 + d_b/2,800);
}
