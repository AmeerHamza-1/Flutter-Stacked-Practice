import 'package:st_management/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class ProfileVm extends BaseViewModel {
  CounterService counterService = CounterService();
  int get counter => counterService.counter;
  addValue() {
    counterService.onPressed();
    rebuildUi();
  }
}
