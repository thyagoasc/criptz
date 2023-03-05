import 'package:flutter/material.dart';

import '../../repositories/coin_repository.dart';

class CoinPage extends StatelessWidget {
  const CoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final table = CoinRepository.table;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CriptZ'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int coin) {
          return ListTile(
            leading: Image.asset(table[coin].icon),
            title: Text(table[coin].name),
            trailing: Text(table[coin].price.toString()),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: table.length,
      ),
    );
  }
}
