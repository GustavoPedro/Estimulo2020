part of 'create_account_bloc.dart';

abstract class CreateAccountEvent extends Equatable {
  const CreateAccountEvent();

  @override
  List<Object> get props => [];
}

class SetAddressByCep extends CreateAccountEvent {
  final AccountViewModel accountViewModel;

  SetAddressByCep(this.accountViewModel);

  @override
  List<Object> get props => [accountViewModel];
}
