part of 'transaction_bloc.dart';

class TransactionState extends Equatable{
  final Transactions transactions;
  final Categories categories;

  const TransactionState({required this.transactions, required this.categories});

  TransactionState copyWith({Transactions? transactions, Categories? categories}){
    return TransactionState(
      transactions: transactions ?? this.transactions,
      categories: categories ?? this.categories
    );
  }

  @override
  List<Object?> get props => [transactions, categories];
}

class Transactions extends Equatable{
  final List<Transaction> expenses;
  final List<Transaction> incomes;

  const Transactions({required this.expenses, required this.incomes});

  Transactions copyWith({List<Transaction>? expenses, List<Transaction>? incomes}){
    return Transactions(
      expenses: expenses ?? this.expenses,
      incomes: incomes ?? this.incomes
    );
  }

  Transactions removeExpense({required String expenseId}){
    final List<Transaction> newExpenses = [...expenses];
    newExpenses.where((exp) => exp.id != expenseId,);

    return Transactions(
      expenses: newExpenses,
      incomes: incomes
    );
  }

  Transactions removeIncome({required String incomeId}){
    final List<Transaction> newIncome = [...incomes];
    newIncome.where((inc) => inc.id != incomeId,);

    return Transactions(
      expenses: expenses,
      incomes: newIncome
    );
  }

  @override
  List<Object?> get props => [expenses, incomes];
}

class Categories extends Equatable{
  final List<Category> categoryList;

  const Categories({this.categoryList = baseCategories});

  Categories copyWith({List<Category>? categoryList}){
    return Categories(
      categoryList: categoryList ?? this.categoryList
    );
  }
  
  Categories remove({required String categoryTitle}){
    final List<Category> newCategories = [...categoryList];
    newCategories.where((cat) => cat.title != categoryTitle);

    return Categories(
      categoryList: newCategories
    );
  }

  @override
  List<Object?> get props => [categoryList];
}

const List<Category> baseCategories = [
    Category(title: "Food"),
    Category(title: "Transportation"),
    Category(title: "Rent"),
    Category(title: "Health"),
    Category(title: "Other")
  ];