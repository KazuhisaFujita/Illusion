float l1 = 200; //棒1の長さ
float l2 = 200; //棒2の長さ
float theta = 10/180.0*PI; //辺の角度

background(255,255,255);//背景の色
size(1200, 800);        //画面のサイズ

strokeWeight(2);
line(200, 400, 200 + 800 * cos(theta) , 400 + 800 * sin(theta)); //斜め線
line(200, 400, 200 + 800 * cos(-theta), 400 + 800 * sin(-theta));//斜め線

line(500, 400 - l1/2, 500, 400 + l1/2); //棒1
line(800, 400 - l2/2, 800, 400 + l2/2); //棒2
