import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit(initializerName: r'$initGetIt')
void configureDependencies() {
// configureDataDependencies imported from feature_module
//configureDataDependencies(getIt);
}