//Radice numerica 
//FIX

void main() {
  int n = 456;
  print('Procedura ricorsiva: ' +
      radiceNumericaRicorsiva(n.toString()).toString());
  print('Procedura iterativa: ' +
      radiceNumericaIterativa(n.toString()).toString());
}

int radiceNumericaIterativa(String n) {
  int rho = 0;
  for (int i = 0; i < n.length; i++) {
    rho += int.parse(n[i]);
  }
  return rho;
}

int radiceNumericaRicorsiva(String n, {int index = 0, int rho = 0}) {
  if (index == (n.length)) return rho;
  rho += int.parse(n[index]);
  index++;
  return radiceNumericaRicorsiva(n, index: index, rho: rho);
}
