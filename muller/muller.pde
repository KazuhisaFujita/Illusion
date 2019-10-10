background(255,255,255);
size(1000, 800);
strokeWeight(4);

float r = 100.0;
float degree = PI * 45.0 / 180.0;

int X0 = 200;
int Y0 = 200;
int L1 = 600;

line(X0, Y0, X0 + r * cos(degree), Y0 + r * sin(degree));
line(X0, Y0, X0 + r * cos(degree), Y0 + r * sin(-degree));
line(X0, Y0, X0 + L1, Y0);
line(X0 + L1, Y0, X0 + L1 - r * cos(degree), Y0 + r * sin(degree));
line(X0 + L1, Y0, X0 + L1 - r * cos(degree), Y0 + r * sin(-degree));

int V = 250;
int L2 = 600;

line(X0 + (L1 - L2) / 2.0, Y0 + V, X0 + (L1 - L2) / 2.0 - r * cos(degree), Y0 + V + r * sin(degree));
line(X0 + (L1 - L2) / 2.0, Y0 + V, X0 + (L1 - L2) / 2.0 - r * cos(degree), Y0 + V + r * sin(-degree));
line(X0 + (L1 - L2) / 2.0, Y0 + V, X0 + (L1 - L2) / 2.0 + L2, Y0 + V);
line(X0 + (L1 - L2) / 2.0 + L2, Y0 + V, X0 + (L1 - L2) / 2.0 + L2 + r * cos(degree), Y0 + V + r * sin(degree));
line(X0 + (L1 - L2) / 2.0 + L2, Y0 + V, X0 + (L1 - L2) / 2.0 + L2 + r * cos(degree), Y0 + V + r * sin(-degree));
