import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class AddBusinessNameViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  List<BusinessCategory> _categories = [];
  List<BusinessCategory> get categories => _categories;
  set categories(List<BusinessCategory> c) {
    _categories = c;
    notifyListeners();
  }

  BusinessCategory? _category;
  BusinessCategory? get selectedCategory => _category;
  set selectedCategory(BusinessCategory? c) {
    _category = c;
    notifyListeners();
  }

  bool _load = false;
  bool get gettingCat => _load;
  set gettingCat(bool v) {
    _load = v;
    notifyListeners();
  }

  onCategoryChanged(BusinessCategory? item) {
    selectedCategory = item;
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  bool isActive() {
    return nameController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty &&
        selectedCategory != null;
  }
}
