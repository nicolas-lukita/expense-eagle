class Transaction {
  final String id;
  final String? title;
  final double value;
  final String category;
  final String? currency;
  final DateTime timestamp;

  const Transaction({
    required this.id,
    this.title = "",
    required this.value,
    required this.category,
    this.currency = "",
    required this.timestamp
  });
}