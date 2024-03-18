class TransactionHistoryListTileModel {
  final String title, date, amount;
  final bool isWithdrawal;

  TransactionHistoryListTileModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });
}
