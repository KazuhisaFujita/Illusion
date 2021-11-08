int w = 1200; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

float H = 50; //行の高さ
float W = 50; //縞の幅

color color1 = color(0, 0, 0); //四角の色1
color color2 = color(255, 255, 255);//四角の色2
color colorl = color(128,128,128); //並行の線の色

float stagger = 5; //ズレ
  
void settings()
{
  size(w, h); //画面サイズ
}

void setup()
{

  float x = -50;
  float y = 0;

  for(int l = 0; l < 20; l++){
    for(int i = 0; i < 100; i++){
      if(i % 2 == 1){
        fill(color1);
      }else{
        fill(color2);
      }
      rect(x + W * i + stagger * (l % 2), y, W, H);
     }
    line(0, y, h, y);
    y += H;
    stroke(colorl);
  }
}
