//Programma per verificare se un numero e primo
import 'dart:math';

void main() {
  int n = 11;
  int d = 2;
  while(d < sqrt(n)){ //Dal teorema di Bertrand posso mettere come condizione di fine ciclo sqrt(n) invece di n diminuendo la complessità del programma
    if(n % d == 0){
      print('non e numero primo');
      return;
    }
    d++;
  }
  print('numero primo');
}
