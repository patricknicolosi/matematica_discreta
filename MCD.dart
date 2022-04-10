int MCD_r(int a, int b){
	if (b == 0) return a;
	int r = a % b;
	return MCD_r(b, r);
}

int MCD_i(int a, int b){
	int r = a % b;
	while(r != 0){
		r = a % b;
		a = b;
		b = r;
	}
	return a;
}

void main(){
	int a = 90;
	int b = 25;
	print(MCD_r(a, b));
  print(MCD_i(a, b));
	
}
