int w = 1200; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

float H = 50; //行の高さ
float W = 50; //縞の幅

void settings()
{
  size(w, h); //画面サイズ
}

void setup()
{
  float stagger = 5; //行のズレ

  float x = -50;
  float y = 0;

  for(int l = 0; l < 20; l++){
    for(int i = 0; i < 100; i++){
       fill((i % 2) * 255);
       rect(x + W * i + stagger * (l % 2), y, W, H);
     }
    line(0, y, h, y);
    y += H;
    stroke(128);
  }
}
