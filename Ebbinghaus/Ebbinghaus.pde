float RL = 80;
float R0 = 90;
float X0 = 300;
float Y0 = 300;
int N = 6;
int flag = 0;


float x = X0;
float y = Y0 - R0;

size(1200, 800);
fill(255);

background(255);
for(int i = 0; i < N; i++){
  x = X0 + R0 * cos(2 * PI / N * i);
  y = Y0 + R0 * sin(2 * PI / N * i);
  circle(x, y , RL);
}

float RS = 40;
circle(X0, Y0, RS);

RL = 10;
R0 = 30;
X0 = 800;
Y0 = 300;
N = 8;
flag = 0;

x = X0;
y = Y0 - R0;

for(int i = 0; i < N; i++){
  x = X0 + R0 * cos(2 * PI / N * i);
  y = Y0 + R0 * sin(2 * PI / N * i);
  circle(x, y , RL);
}

RS = 40;
circle(X0, Y0, RS);
