import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:injectable/injectable.dart';
import 'package:parkingclic/feature/domain/use_case/get_users_all_use_case.dart';
import 'package:parkingclic/shared/use_case/base_use_cases.dart';
import 'package:parkingclic/shared/view_model/base_view_model.dart';

@injectable
class PagesLoginViewModel extends BaseViewModel {
  final GetUsersAllUseCase _getUsersAllUseCase;

  late Stream<bool> loading;
  late Stream<String> albumTitle;

  PagesLoginViewModel(this._getUsersAllUseCase) {
    _init();
  }

  void _init() async {
    loading = _getUsersAllUseCase.call()
    loading = _getUsersAllUseCase.result.map((event) => false);
    albumTitle = _getUsersAllUseCase.result.mapSuccess((event) => event.title);
    final x = await _getUsersAllUseCase.call(NoParams());
    x.
  }

  void _loadUsers() async {
    final result = await _getUsersAllUseCase.call(NoParams());
    final resultado = await _getUsersAllUseCase.call(NoParams());
    result.fold((l) {
       emitter(ErrorGetArticlesState(l.errorMessage));
    }, (r) {
       emitter(SuccessGetArticlesState(r));
    });
  }

  void onScreenStarted(int id) {
    _loadDetails(id);
  }

  void _loadDetails(int id) {
    _getUsersAllUseCase.execute(id);
  }

  void loadTodos() async {
    setBusy(true);

    final result = await _getUsersAllUseCase.call();
    result.when(success: (data) {
      _todoList = data;
      setError(null);
    }, error: (error) {
      _errorMsg = error;
      setError(true);
    });
    setBusy(false);
  }
}
