size(1200, 800); //画面サイズ

float H = 50; //行の高さ
float W = 50; //縞の幅

float stagger = 5; //行のズレ

float x = -50;
float y = 0;

for(int l = 0; l < 20; l++){
  for(int i = 0; i < 100; i++){
     fill((i % 2) * 255);
     rect(x + W * i + stagger * (l % 2), y, W, H);
   }
  line(0, y, 2000, y);
  y += H;
  stroke(128);
}
