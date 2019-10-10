int h_size = 1600;
int v_size = 800;
size(1600, 800);
background(255,255,255);
//noSmooth();
strokeWeight(4);

int v_interval = 80;
int h_interval = 80;
int w = 50;

for(int n = 0; n < 20; n+=2){
  int v = 50 + v_interval * n;
  line(0, v, h_size, v);
  for(int i = 0; i < 200; i++){
        line(-70 - w + i * h_interval, v - 20, -70 + w + i * h_interval, v + 20);
  }

  v += v_interval;
  line(0, v, h_size, v);
  for(int i = 0; i < 200; i++){
    line(-70 + w+ i * h_interval, v - 20, -70 - w + i * h_interval, v + 20);
  }
}
