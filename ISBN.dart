//Verifica ISBN10 e ISBN13 valido

void main() {
  ISBN isbn = ISBN('2468864222');
  print(isbn.controlla());
}

class ISBN {
  String codice;

  ISBN(this.codice);

  dynamic controlla() {
    if (codice.toString().length == 10) {
      return _controllaISBN10();
    } else if (codice.length == 13) {
      return _controllaISBN13();
    } else {
      print('formato ISBN non supportato');
    }
  }

  bool _controllaISBN10() {
    int sum = 0;
    for (int i = 0; i < 10; i++) {
      sum += int.parse(codice[i]);
    }
    if (sum % 11 == 0) {
      return true;
    }
    return false;
  }

  bool _controllaISBN13() {
    int sum = 0;
    for (int i = 0; i < 10; i++) {
      sum += int.parse(codice[i]);
    }
    print(sum);
    if (sum == 99) {
      return true;
    }
    return false;
  }
}
