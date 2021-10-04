import 'package:test/test.dart';
import 'calculadora_desconto.dart';

void main() {
  test('Deve dar erro ao iniciar calculadora com valores negativos ou zero',
      () {
    expect(() => CalculadoraDesconto.iniciarCalculadora(-10.0, 1.0),
        throwsA(TypeMatcher<ArgumentError>()));

    expect(() => CalculadoraDesconto.iniciarCalculadora(1.0, -10.0),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve calcular desconto corretamente utilizando valores decimais', () {
    const desconto = 25.00;
    const valorSemDesconto = 150.0;
    const valorComDesconto = valorSemDesconto - desconto;
    CalculadoraDesconto calculadora =
        CalculadoraDesconto.iniciarCalculadora(valorSemDesconto, desconto);
    expect(calculadora.calcular(), valorComDesconto);
  });

  test('Deve calcular desconto corretamente utilizando porcentagem', () {
    const desconto = 10.00;
    const valorSemDesconto = 150.0;
    const valorComDesconto =
        valorSemDesconto - (valorSemDesconto * desconto / 100);
    CalculadoraDesconto calculadora =
        CalculadoraDesconto.iniciarCalculadora(valorSemDesconto, desconto);
    expect(calculadora.calcularPorcentagem(), valorComDesconto);
  });
}
