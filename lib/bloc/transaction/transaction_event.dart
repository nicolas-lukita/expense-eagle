part of 'transaction_bloc.dart';

class TransactionEvent extends Equatable{
  const TransactionEvent();
  
  @override
  List<Object?> get props => [];
}

class AddExpenseEvent extends TransactionEvent{
  final Transaction newTransaction;

  const AddExpenseEvent({required this.newTransaction});

  @override
  List<Object?> get props => [newTransaction];
}

class AddIncomeEvent extends TransactionEvent{
  final Transaction newTransaction;

  const AddIncomeEvent({required this.newTransaction});

  @override
  List<Object?> get props => [newTransaction];
}

class RemoveExpenseEvent extends TransactionEvent{
  final String id;

  const RemoveExpenseEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

class RemoveIncomeEvent extends TransactionEvent{
  final String id;

  const RemoveIncomeEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

class EditExpenseEvent extends TransactionEvent{
  final String id;
  final Transaction edittedTransaction;

  const EditExpenseEvent({required this.id, required this.edittedTransaction});

  @override
  List<Object?> get props => [id, edittedTransaction];
}

class EditIncomeEvent extends TransactionEvent{
  final String id;
  final Transaction edittedTransaction;

  const EditIncomeEvent({required this.id, required this.edittedTransaction});

  @override
  List<Object?> get props => [id, edittedTransaction];
}

class AddCategoryEvent extends TransactionEvent{
  final String newCategory;

  const AddCategoryEvent({required this.newCategory});

  @override
  List<Object?> get props => [newCategory];
}

class RemoveCategoryEvent extends TransactionEvent{
  final String categoryTitle;

  const RemoveCategoryEvent({required this.categoryTitle});

  @override
  List<Object?> get props => [categoryTitle];
}

class EditCategoryEvent extends TransactionEvent{
  final String edittedCategory;

  const EditCategoryEvent({required this.edittedCategory});

  @override
  List<Object?> get props => [edittedCategory];
}