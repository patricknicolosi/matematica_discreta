void main() {
  List<List<int>> famiglia = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8],
    [9, 10],
    [1, 4, 5],
    [2, 6, 8],
    [3, 5],
    [1, 10],
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
  print(chiusura);
}

List<int> unione(List<int> a, List<int> b) {
  List<int> c = [];
  c = a + b;
  c.sort();
  return c.toSet().toList();
}

