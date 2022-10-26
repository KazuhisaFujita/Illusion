int w = 800; //ウインドウの横幅
int h = 800; //ウインドウの縦幅

void settings()
{
    size(w, h);
}

void setup()
{
    background(255);//背景の色
    
    int r = 10;//円の半径
    int N = 10; //集中線の数
    float b = 1; //集中線の幅
    strokeWeight(b); 
    stroke(0,0,0); //線の色
    
    for(int i = 0; i < N; i++){
        line(400 + r*cos(2*PI/N*i), 400 + r*sin(2*PI/N*i), 400 + 600 * cos(2*PI/N*i), 400 + 600*sin(2*PI/N*i));
    }
}