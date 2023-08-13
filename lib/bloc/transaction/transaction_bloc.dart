import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_eagle/model/category.dart';
import 'package:expense_eagle/model/transaction.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState(transactions: Transactions(expenses: [], incomes: []), categories: Categories(categoryList: []))) {
    on<AddExpenseEvent>(_addExpense);
    on<AddIncomeEvent>(_addIncome);
    on<RemoveExpenseEvent>(_removeExpense);
    on<RemoveIncomeEvent>(_removeIncome);
    on<EditExpenseEvent>(_editExpense);
    on<EditIncomeEvent>(_editIncome);
    on<AddCategoryEvent>(_addCategory);
    on<RemoveCategoryEvent>(_removeCategory);
    on<EditCategoryEvent>(_editCategory);
  }

  void _addExpense(AddExpenseEvent event, Emitter<TransactionState> emit){
    emit(state.copyWith(transactions: state.transactions.copyWith(expenses: [...state.transactions.expenses, event.newTransaction])));
  }

  void _addIncome(AddIncomeEvent event, Emitter<TransactionState> emit){
    emit(state.copyWith(transactions: state.transactions.copyWith(incomes: [...state.transactions.incomes, event.newTransaction])));
  }

  void _removeExpense(RemoveExpenseEvent event,Emitter<TransactionState> emit){
    emit(state.copyWith(transactions: state.transactions.removeExpense(expenseId: event.id)));
  }
  
  void _removeIncome(RemoveIncomeEvent event,Emitter<TransactionState> emit){
    emit(state.copyWith(transactions: state.transactions.removeIncome(incomeId: event.id)));
  }
  
  void _editExpense(EditExpenseEvent event,Emitter<TransactionState> emit){}
  
  void _editIncome(EditIncomeEvent event,Emitter<TransactionState> emit){}
  
  void _addCategory(AddCategoryEvent event,Emitter<TransactionState> emit){}
  
  void _removeCategory(RemoveCategoryEvent event,Emitter<TransactionState> emit){
    emit(state.copyWith(categories: state.categories.remove(categoryTitle: event.categoryTitle)));
  }
  
  void _editCategory(EditCategoryEvent event,Emitter<TransactionState> emit){}
}
