background(255,255,255);//背景色
size(1000, 800);        //ウインドウサイズ
strokeWeight(4);        //線の太さ


int X0 = 200; //
int Y0 = 200; //

int L1             = 600;   //線の長さ
float r_upper      = 100.0; //矢羽の大きさ
float degree_upper = 45.0;  //矢羽の角度 (degree)
float rad_upper    = radians(degree_upper); //矢羽の角度 (rad)

int V              = 250;   //上下の間隔
int L2             = 600;   //線の長さ
float r_lower      = 100.0; //矢羽の大きさ
float degree_lower = 45.0;  // 矢羽の角度 (degree)
float rad_lower    = radians(degree_lower); // 矢羽の角度 (rad)


//上の矢の描画
line(X0, Y0, X0 + r_upper * cos(rad_upper), Y0 + r_upper * sin(rad_upper));
line(X0, Y0, X0 + r_upper * cos(rad_upper), Y0 + r_upper * sin(-rad_upper));
line(X0, Y0, X0 + L1, Y0);
line(X0 + L1, Y0, X0 + L1 - r_upper * cos(rad_upper), Y0 + r_upper * sin(rad_upper));
line(X0 + L1, Y0, X0 + L1 - r_upper * cos(rad_upper), Y0 + r_upper * sin(-rad_upper));

//下の矢の描画
line(X0 + (L1 - L2) / 2.0, Y0 + V, X0 + (L1 - L2) / 2.0 - r_lower * cos(rad_lower),
    Y0 + V + r_lower * sin(rad_lower));
line(X0 + (L1 - L2) / 2.0, Y0 + V, X0 + (L1 - L2) / 2.0 - r_lower * cos(rad_lower),
    Y0 + V + r_lower * sin(-rad_lower));
line(X0 + (L1 - L2) / 2.0, Y0 + V, X0 + (L1 - L2) / 2.0 + L2, Y0 + V);
line(X0 + (L1 - L2) / 2.0 + L2, Y0 + V, X0 + (L1 - L2) / 2.0 + L2 + r_lower * cos(rad_lower),
    Y0 + V + r_lower * sin(rad_lower));
line(X0 + (L1 - L2) / 2.0 + L2, Y0 + V, X0 + (L1 - L2) / 2.0 + L2 + r_lower * cos(rad_lower),
    Y0 + V + r_lower * sin(-rad_lower));
