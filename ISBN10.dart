//Verifica ISBN10 valido

void main() {
  int n = 2468864222;
  isValidISBN(n.toString());
}

void isValidISBN(String n){
  int sum = 0;
  for(int i = 0; i < 10; i++){
    sum += int.parse(n[i]);
  }
  print(sum);
  if(sum % 11 == 0){
    print('codice ISBN valido');
  }
  else{
    print('codice ISBN non valido');
  }
}
