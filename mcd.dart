//Implementazione ricorsiva e iterativa dell'algoritmo di Euclide per il calcolo del massimo comun divisore
int mcdR(int a, int b) {
  if (b == 0) return a;
  int r = a % b;
  return mcdR(b, r);
}

int mcdI(int a, int b) {
  int r = a % b;
  while (r != 0) {
    r = a % b;
    a = b;
    b = r;
  }
  return a;
}

void main() {
  int a = 90;
  int b = 25;
  print(mcdR(a, b));
  print(mcdI(a, b));
}
