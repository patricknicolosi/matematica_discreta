void main() {
  List<int> insieme = [1, 2, 3, 6];
  List<int> chiusura = [];
  
  chiusura.addAll(insieme);
  
  for(int i = 0; i < insieme.length; i++){
    for(int j = i; j < insieme.length; j++){
      chiusura.add(mcm(insieme[i], insieme[j]));
    }
  }
  
  print(chiusura.toSet().toList());

}

int mcm(int a, int b) => (a * b) ~/ mcd(a, b);

int mcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}


