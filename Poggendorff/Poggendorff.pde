int dh = 40; //2本の先のズレ
float h = 700;
float w = 100; //四角の幅
float theta = 65/180.0*PI; //線の角度
int l = 1000; //線の長さ

background(255,255,255);//背景の色
size(800, 800);        //画面のサイズ

strokeWeight(5); //先の太さ
line(400 - l * cos(theta) / 2, 400 - l * sin(theta) / 2, 400 + l * cos(theta) / 2, 400 + l * sin(theta) / 2); // 長い線
line(400, 400 + dh, 400 + l * cos(theta) / 2, 400 +dh + l * sin(theta) / 2); // 長い線

strokeWeight(5);
rect(400 - w/2, 400 - h/2, w,  h); //四角
