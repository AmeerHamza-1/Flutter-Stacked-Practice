import 'package:st_management/app/app.locator.dart';
import 'package:st_management/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class ProfileVm extends BaseViewModel {
  CounterService counterService = locator<CounterService>();
  int get counter => counterService.counter;
  addValue() {
    counterService.onPressed();
    rebuildUi();
  }
}
