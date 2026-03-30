//修改自week05-2 好玩的程式設計  兩層for(迴圈)配合if...else if...else
//Ctrl-N 新開視窗
void setup(){
 size(800,500);//視窗大小
}
int[][]a=new int[10][16];
void mouseDragged(){
 int i = mouseY/50, j=mouseX/50;
 a[i][j]=1;
}
void draw(){
 for(int i=0; i<10; i++){//上週是for y現在改成for i 左手 i
  for(int j=0;j<16;j++){//上週是for x現在改成for j 左手 j
   if(a[i][j]==1)fill(#5DFF1F);//陣列若有值,設綠色
   else fill(255);//沒有值,設白色
   rect(j*50,i*50,50,50);//畫四邊形
   }
  }
 }
 
