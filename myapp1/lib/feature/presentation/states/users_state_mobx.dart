import 'package:mobx/mobx.dart';
import 'package:myapp1/feature/data/models/users_model.dart';
import 'package:myapp1/feature/data/repositories/users_repository.dart';

part 'users_state_mobx.g.dart';

class UserState = UserStateBase with _$UserState;

abstract class UserStateBase with Store {
  @observable
  List<User_Model> userModelList = [];

  @action
  Future<void> getDataAll() async {
    final res = await UserRepository.getUsersList();
    userModelList = res;
    print(res);
  }
}
