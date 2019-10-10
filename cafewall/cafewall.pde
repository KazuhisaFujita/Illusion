size(1200, 800);
float V = 50;
float H = 50;

float stagger = 1;

float x = -50;
float y = 0;

for(int l = 0; l < 20; l++){
  for(int i = 0; i < 100; i++){
     fill((i % 2) * 255);
     rect(x + H * i + stagger * (l % 2), y, H, V);
   }
  line(0, y, 2000, y);
  y += V;
  stroke(128);
}
