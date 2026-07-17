import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti8_news/features/home/presentation/cubit/test_cubit/test_state.dart';

class TestCubit extends Cubit<TestState>{
  TestCubit(): super(TestInitState());

  static TestCubit get(context) => BlocProvider.of(context);
  bool mySwitch = false;
  bool myCheckBox = false;

  onSwitchChanged(bool value){
    mySwitch = value;
    emit(SwitchChangedState());
  }

  onCheckChanged(bool? value){
    if(value!= null){
      myCheckBox = value;
    }
    emit(CheckBoxChangedState());
  }


  double containerSize = 100;
  changeContainerSize(){
    containerSize += 20;
    emit(ContainerSizeChangedState());
  }
}