background(255,255,255);//背景の色
size(800, 800); //画面のサイズ

int N = 36; //集中線の数
for(int i = 0; i < N; i++){
  line(400, 400, 400 + 600 * cos(2*PI/N*i), 400 + 600*sin(2*PI/N*i));
}

float w = 100; //2本の線の幅
strokeWeight(5); //線の太さ
line(400 - w/2, 0, 400 - w/2,800);
line(400 + w/2, 0, 400 + w/2,800);
