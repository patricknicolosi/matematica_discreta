//Congettura di Collatz

void main(){
  int x = 10;
  while(x > 1){
    if(x % 2 == 0){
      x = (x / 2).toInt();
    }
    else{
      x = (3 * x) + 1;
    }
  }
  print(x);
}
