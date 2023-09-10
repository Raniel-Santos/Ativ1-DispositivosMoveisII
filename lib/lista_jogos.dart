import 'package:flutter/material.dart';

import 'carrinho.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<dynamic> data = [
    {
      "id": 1,
      "nome": "Elden Ring",
      "preco": "250,00"
    },
    {
      "id": 2,
      "nome": "Dark Souls 3",
      "preco": "200,00"
    },
    {
      "id": 3,
      "nome": "Stafield",
      "preco": "350,00"
    },
    {
      "id": 4,
      "nome": "Destiny 2",
      "preco": "50,00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LISTA DE JOGOS',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LISTA DE JOGOS'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CompraPage(produto: item),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['nome'],
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item['preco'],
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}