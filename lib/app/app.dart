import 'package:st_management/services/counter_service.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes:[],
  dependencies:[
    Singleton(classType: CounterService),
  ],
)

class App{}