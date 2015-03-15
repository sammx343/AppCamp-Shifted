public class pantallaDeInicio{
  
  /*public boolean dispatchTouchEvent(MotionEvent event){
  P+=1
  
  }*/
  int x, y;
  
  
  void showPantalla(){
    if (k == 0){
      image(img, 0, 0, width, height);
    }
    if (k == 1){
      image(img2, 0, 0, width, height);
    }
    if (k == 2){
      image(gameType, 0, 0, width, height);
    }
    if (k == 3){
      image(gameCustom, 0, 0, width, height);
    }
        
    if (k == 4){
      if (overRect(0,height/10 , width, height/2)){
        image(gameLink, 0, 0, width, height);
      }
    }
        

}
  
  
  boolean overRect(int x, int y, int width1, int height1)  {
    if (mouseX >= x && mouseX <= x+width1 && mouseY >= y && mouseY <= y+height1) {
      return true;
    } else {
      return false;
    }
  }
}

void pantallaAnt(){
  

}
