import 'package:criptz/src/models/coin_model.dart';

class CoinRepository {
  static List<Coin> table = [
    Coin(
      icon: 'images/bitcoin.png',
      name: 'Bitcoin',
      symbol: 'BTC',
      price: 116486.98,
    ),
    Coin(
      icon: 'images/ethereum.png',
      name: 'Ethereum',
      symbol: 'ETH',
      price: 8141.13,
    ),
    Coin(
      icon: 'images/cardano.png',
      name: 'Cardano',
      symbol: 'ADA',
      price: 1.75,
    ),
    Coin(
      icon: 'images/litecoin.png',
      name: 'Litecoin',
      symbol: 'LTC',
      price: 468.62,
    ),
    Coin(
      icon: 'images/xpr.png',
      name: 'XPR',
      symbol: 'XPR',
      price: 1.92,
    ),
    Coin(
      icon: 'images/usdcoin.png',
      name: 'USD Coin',
      symbol: 'USDC',
      price: 5.20,
    ),
  ];
}
