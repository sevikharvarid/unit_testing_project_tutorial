import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_project_tutorial/provider/done_module_provider.dart';

void main() {
  group("Provider test", () {
    test("should contains new item when module completed", () {
      //Skenario pengujian ada di sini , Arrange, Act, Assert
      //Arrange
      var testModuleName = "Test New Item here";
      DoneModuleProvider doneModuleProvider = DoneModuleProvider();

      //Act
      doneModuleProvider.complete(testModuleName);

      //Assert
      final result = doneModuleProvider.doneModuleList.contains(testModuleName);
      expect(result, true);
    });

    test("should remove new item when module deleted", () {
      //Arrange
      var testModuleName = "Test New Item here";
      DoneModuleProvider doneModuleProvider = DoneModuleProvider();

      //Act
      doneModuleProvider.remove(testModuleName);

      //Assert
      final result = doneModuleProvider.doneModuleList.contains(testModuleName);
      expect(result, false);
    });
  });
}
