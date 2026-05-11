//week12-1好玩的程式設計 三角函數(卡牌旋轉、地鼠冒出來、有什麼用)
void setup(){//設定
  size(500,500);//視窗大小
}
float a=0;//angle角度
void draw(){
  //Part 1先劃出「小圈圈在繞大圈圈」了解cos(a)sin(a)
 // float x=250+cos(a)*200,y=250+sin(a)*200;
  //ellipse(x,y,10,10);
  background(#FFFFF2);
  for(int i=0;i<6;i++){
    float x=250+cos(a+i*PI/3)*200,y=250+sin(a+i*PI/3)*100;
    //ellipse(x,y,10,10);
    rect(x-40,y-50,80,100);//改成長方形，而且往左上移一半，才不會歪掉
  }
  
  a+=0.03;
}
