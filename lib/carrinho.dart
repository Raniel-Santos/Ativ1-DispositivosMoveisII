import 'package:flutter/material.dart';

import 'compra_finalizada.dart';

class CompraPage extends StatefulWidget {
  final Map<String, dynamic> produto;

  CompraPage({required this.produto});

  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends State<CompraPage> {
  TextEditingController quantidadeInput = TextEditingController();
  double precoTotal = 0.0;

  @override
  void dispose() {
    quantidadeInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome: ${widget.produto['nome']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Preço: ${widget.produto['preco']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: quantidadeInput,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Insira a Quantidade',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculo();
              },
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text('Preço Total: $precoTotal Reais', style: TextStyle(fontSize: 25),),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FinalPage())
                );
              },
              child: Text('Finalizar compra'),
            ),
          ],
        ),
      ),
    );
  }

  void calculo() {
    final quantidades = int.tryParse(quantidadeInput.text) ?? 1;
    final preco = double.tryParse(widget.produto['preco'].replaceAll(',', '.')) ?? 0.0;
    setState(() {
      precoTotal = quantidades * preco;
    });
  }
}