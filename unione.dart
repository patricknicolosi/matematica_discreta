//Chiusura di una famiglia di insiemi rispetto l'operazione di unione
void main() {
  List<List<int>> famiglia = [
    [1],
    [2],
    [3],
  ];

  List<List<int>> chiusura = [];
  chiusura.addAll(famiglia);

  List<int> unioneTotale = [];

  for (int i = 0; i < famiglia.length; i++) {
    for (int j = i + 1; j < famiglia.length; j++) {
      unioneTotale = unione(unioneTotale, unione(famiglia[i], famiglia[j]));
      chiusura.add(unione(famiglia[i], famiglia[j]));
    }
  }

  chiusura.add(unioneTotale);
  eliminaDuplicati(chiusura);

  print(chiusura);
}

List<int> unione(List<int> a, List<int> b) {
  List<int> c = [];
  c = a + b;
  c.sort();
  return c.toSet().toList();
}

void eliminaDuplicati(List<List<int>> array) {
  for (int i = 0; i < array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i].toString() == array[j].toString()) {
        array.removeAt(i);
      }
    }
  }
}
