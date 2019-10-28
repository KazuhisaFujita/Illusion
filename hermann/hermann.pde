int interval = 10; //黒い正方形の間隔
int size     = 50; //正方形の大きさ

background(255,255,255);//背景の色
size(1600, 800);        //画面のサイズ

for(int i = 0; i < 100; i++){
  for(int j = 0; j < 100; j++){
    fill(0);
    square( (size + interval) * i, (size + interval) * j, size);
  }
}
