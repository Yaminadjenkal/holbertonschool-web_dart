List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = temperaturesInC.map((item) {
       double result = (item * 9 / 5) +32;
       return double.parse(result.toStringAsFixed(2));
    }).toList();

    return temperaturesInF;
}
