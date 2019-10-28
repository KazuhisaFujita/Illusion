float RL_L = 80; //左の周囲の円の直径
float R0_L = 90; //左の周囲の円の円配置の半径
float X0_L = 300;//左の図形の横中央の位置
float Y0_L = 300;//左の図形の縦中央の位置
int N_L = 6;     //左の周囲の円の数
float RS_L = 40; //左の中央の円の直径

float RL_R = 10; //右の周囲の円の直径
float R0_R = 30; //右の周囲の円の円配置の半径
float X0_R = 600;//右の図形の横中央の位置
float Y0_R = 300;//右の図形の縦中央の位置
int N_R = 8;     //右の周囲の円の数
float RS_R = 40; //右の中央の円の直径


//左の円の描画
float x = X0_L;
float y = Y0_L - R0_L;

size(1200, 800);
fill(255);

background(255);
for(int i = 0; i < N_L; i++){
  x = X0_L + R0_L * cos(2 * PI / N_L * i);
  y = Y0_L + R0_L * sin(2 * PI / N_L * i);
  circle(x, y , RL_L);
}

circle(X0_L, Y0_L, RS_L);


//右の円の描画
x = X0_R;
y = Y0_R - R0_R;

for(int i = 0; i < N_R; i++){
  x = X0_R + R0_R * cos(2 * PI / N_R * i);
  y = Y0_R + R0_R * sin(2 * PI / N_R * i);
  circle(x, y , RL_R);
}

circle(X0_R, Y0_R, RS_R);
