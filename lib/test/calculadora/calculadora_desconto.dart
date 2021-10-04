class CalculadoraDesconto {
  static late double _valorSemDesconto;
  static late double _desconto;

  CalculadoraDesconto._(double valorSemDesconto, double desconto);

  static CalculadoraDesconto iniciarCalculadora(valorSemDesconto, desconto) =>
      _iniciarCalculadoraDesconto(valorSemDesconto, desconto);

  static CalculadoraDesconto _iniciarCalculadoraDesconto(
      double valorSemDesconto, double desconto) {
    _setvalorSemDesconto(valorSemDesconto);
    _setDesconto(desconto);
    return CalculadoraDesconto._(valorSemDesconto, desconto);
  }

  static double _setDesconto(double desconto) => _isValorMaiorZero(desconto)
      ? throw ArgumentError("O desconto deve ser maior que zero!")
      : _desconto = desconto;

  static double _setvalorSemDesconto(double valorSemDesconto) =>
      _isValorMaiorZero(valorSemDesconto)
          ? throw ArgumentError("O valor inicial deve ser maior que zero!")
          : _valorSemDesconto = valorSemDesconto;

  static bool _isValorMaiorZero(double valor) => valor <= 0;

  double calcularPorcentagem() =>
      _valorSemDesconto - (_valorSemDesconto * _desconto / 100);

  double calcular() => _valorSemDesconto - _desconto;
}
