import 'package:get/get.dart';
import 'package:travel_app/models/category_model.dart';
import 'package:travel_app/models/tour_model.dart';
import 'package:travel_app/network/firestore_service.dart';

class HomeController extends GetxController {
  bool isLoading = false;
  List<String> continents = [];
  List<CategoryModel> popularCategory = [];
  int currentIndex = 0;
  List<TourModel> tours = [];

  @override
  void onInit() async {
    super.onInit();
    isLoading = true;
    update();

    await getContinents();
    await getPopularCategory();
    await getTours();

    isLoading = false;
    update();
  }

  Future<void> getContinents() async {
    continents = [];
    var value = await FirestoreServic.instance.getContinents();

    if (value.exists) {
      var names = value.data()?["names"] as Map<String, dynamic>?;

      if (names != null) {
        continents.addAll(names.values.cast<String>());
      }
    }

    update();
  }

  Future<void> getPopularCategory() async {
    popularCategory = [];
    var documents = await FirestoreServic.instance.getPopularCategories();

    if (documents.exists) {
      var data = documents.data();

      if (data != null) {
        data.forEach((key, value) {
          popularCategory.add(CategoryModel.fromJson(value));
        });
      }
    }

    update();
  }

  void onChangeContinent(int newIndex) {
    currentIndex = newIndex;
    update();
  }

  Future<void> getTours() async {
    tours = [];
    var querySnapshot = await FirestoreServic.instance.getTours();

    if (querySnapshot.docs.isNotEmpty) {
      querySnapshot.docs.forEach((element) {
        tours.add(TourModel.fromJson(element.data()));
      });
    }

    update();
  }
}
