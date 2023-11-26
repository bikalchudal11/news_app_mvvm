import 'data.dart';
import 'test.dart';

void main() {
  List<DataModel> dataModel = [];

  for (Map<String, dynamic> element in testApi) {
    dataModel.add(
      DataModel(id: element["id"] ?? "", title: element["title"] ?? ""),
    );
  }

//not suitable loop
//   dataModel.forEach((element) {
//     print('''
// Id: ${element.id},
// Title: ${element.title}
// ''');
//   });

  // suitable loop
  for (var element in dataModel) {
    print('''
Id: ${element.id},
Title: ${element.title}
''');
  }
}
