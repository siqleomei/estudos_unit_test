class CalculadoraDesconto {
  static late double _valorTotal;
  static late double _desconto;

  CalculadoraDesconto._(double valorTotal, double desconto);

  static CalculadoraDesconto iniciarCalculadora(valorTotal, desconto) =>
      _calculadoraDesconto(valorTotal, desconto);

  static CalculadoraDesconto _calculadoraDesconto(
      double valorTotal, double desconto) {
    _setValorTotal(valorTotal);
    _setDesconto(desconto);
    return CalculadoraDesconto._(valorTotal, desconto);
  }

  static double _setDesconto(double desconto) => _isValorMaiorZero(desconto)
      ? throw ArgumentError("O desconto deve ser maior que zero!")
      : _desconto = desconto;

  static double _setValorTotal(double valorTotal) =>
      _isValorMaiorZero(valorTotal)
          ? throw ArgumentError("O valor inicial deve ser maior que zero!")
          : _valorTotal = valorTotal;

  static bool _isValorMaiorZero(double valor) => valor <= 0;

  double calcularPorcentagem() => _valorTotal - (_valorTotal * _desconto / 100);

  double calcular() => _valorTotal - _desconto;
}
