int interval = 10; //
int size = 50;
background(255,255,255);
size(1600, 800);

for(int i = 0; i < 100; i++){
  for(int j = 0; j < 100; j++){
    fill(0);
    square( (size + interval) * i, (size + interval) * j, size);
  }
}
