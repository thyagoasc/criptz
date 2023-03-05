import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/coin_model.dart';
import '../../repositories/coin_repository.dart';

class CoinPage extends StatefulWidget {
  const CoinPage({Key? key}) : super(key: key);

  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  List<Coin> selected = [];

  @override
  Widget build(BuildContext context) {
    final table = CoinRepository.table;

    NumberFormat realBRL = NumberFormat.currency(
      locale: 'pt-BR',
      name: 'R\$',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('CriptZ'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int coin) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            selected: selected.contains(table[coin]),
            selectedTileColor: Theme.of(context).colorScheme.outlineVariant,
            onLongPress: () {
              setState(() {
                if (selected.contains(table[coin])) {
                  selected.remove(table[coin]);
                } else {
                  selected.add(table[coin]);
                }
              });
            },
            leading: selected.contains(table[coin])
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 40,
                    child: Image.asset(table[coin].icon),
                  ),
            title: Text(
              table[coin].name,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              realBRL.format(table[coin].price),
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: table.length,
      ),
    );
  }
}
