class SilverModel {
  final String name;
  final double price;
  final String symbol;
  final String updatedAt;
  final String updatedAtReadable;

  SilverModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory SilverModel.fromjson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      symbol: json['symbol'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
 


// "name": "Silver",
//     "price": 78.029999,
//     "symbol": "XAG",
//     "updatedAt": "2026-02-13T19:41:43Z",
//     "updatedAtReadable": "a few seconds ago"