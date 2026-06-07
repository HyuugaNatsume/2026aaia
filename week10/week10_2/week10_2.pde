//week10-2好玩的程式設計 地鼠會冒出來
void setup(){
  size(300, 300);//視窗大小
}
int[][]a={{0, 0, 0},{0, 0, 0},{0, 0, 0}};
void draw(){
  background(#67EA5C);//綠色背景
  if(frameCount%60 == 0){
    int i = int(random(3)), j = int(random(3));
    a[i][j] = 60;
  }
  for(int i=0; i<3;i++){//左手i對應y座標
    for(int j=0;j<3;j++){//右手j對應x座標
      int x= j*100 + 50, y=i*100 + 50;//算出座標
      if(a[i][j] > 0){
        fill(#715931, a[i][j]*4);
        a[i][j]--;//數字再變小
      } else fill(#67EA5C);
      ellipse(x, y, 80, 80);//地鼠的洞
   }
  }
}
