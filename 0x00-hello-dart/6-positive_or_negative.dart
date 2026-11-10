void main(List<String> args){
  int n = int.parse(args[0]);
  if (n < 0) {
    print('$n is negative');
  }
  else if (n == 0) {
    print('$n is zero');
  }
  else {
    print('$n is positive');
  }
}
