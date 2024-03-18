import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/banks/item/bank.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/dropdown_type/dropdown_type.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class BlueDropdown {
  BlueDropdown._();

  static Widget country({
    required List<CountryCode> countries,
    required ValueChanged<CountryCode?> onChanged,
    required TextEditingController? searchController,
    CountryCode? value,
  }) {
    return _BlueCountryDropdown(
      items: countries,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
    );
  }

  static Widget bank({
    required List<BankItem> banks,
    required ValueChanged<BankItem?> onChanged,
    required TextEditingController? searchController,
    BankItem? value,
  }) {
    return _BlueBankDropdown(
      items: banks,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
    );
  }

  static Widget businessCategory({
    required List<BusinessCategory> banks,
    required ValueChanged<BusinessCategory?> onChanged,
    required TextEditingController? searchController,
    BusinessCategory? value,
  }) {
    return _BlueBusinessCategoryDropdown(
      items: banks,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
    );
  }

  static Widget show({
    required List<String> banks,
    required ValueChanged<String?> onChanged,
    required TextEditingController? searchController,
    String? value,
    required String title,
  }) {
    return _BlueStringDropdown(
      items: banks,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
      title: title,
    );
  }
}

class _BlueCountryDropdown extends StatelessWidget {
  const _BlueCountryDropdown({
    required this.items,
    required this.onChanged,
    this.value,
    required this.searchController,
  });

  final List<CountryCode> items;
  final ValueChanged<CountryCode?> onChanged;
  final CountryCode? value;
  final TextEditingController? searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      width: 60,
      height: 25,
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(4)),
      child: _$BlueDropdown<CountryCode>(
        items: items.map((e) => DropdownType(label: e.name, value: e)).toList(),
        selectedValue: value,
        canSearch: true,
        selectedItemBuilder: selectedItem(),
        itemBuilder: itemBuilder,
        onChanged: onChanged,
        onSearchChanged: onSearchChanged,
        searchController: searchController,
        searchHint: "Search Countries",
      ),
    );
  }

  Widget itemBuilder(CountryCode item) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          CountryFlag.fromCountryCode(
            item.countryCode,
            height: 25,
            width: 20,
          ),
          10.horizontalGap,
          Expanded(
            child: Text(
              item.name,
              style: AppTextStyles.textField,
            ),
          ),
          10.horizontalGap,
          Text(
            item.dialCode,
            style: AppTextStyles.textField,
          ),
        ],
      ),
    );
  }

  List<CountryCode> onSearchChanged(String? v) {
    List<CountryCode> temp = [];
    if (v != null && v.isNotEmpty) {
      for (CountryCode country in items) {
        if (country.name.toLowerCase().contains(v.toLowerCase())) {
          temp.add(country);
        }
      }
    } else {
      temp = items;
    }

    return temp;
  }

  Widget selectedItem() {
    return Container(
      height: 25,
      width: 45,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (value != null)
            CountryFlag.fromCountryCode(
              value!.countryCode,
              height: 25,
              width: 20,
            ),
          4.horizontalGap,
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _BlueBankDropdown extends StatelessWidget {
  const _BlueBankDropdown({
    required this.items,
    required this.onChanged,
    this.value,
    required this.searchController,
  });

  final List<BankItem> items;
  final ValueChanged<BankItem?> onChanged;
  final BankItem? value;
  final TextEditingController? searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<BankItem>(
            items: items
                .map((e) => DropdownType(label: e.name, value: e))
                .toList(),
            selectedValue: value,
            canSearch: true,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchController: searchController,
            searchHint: "Search Banks",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      "Bank name",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(BankItem item) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.name,
              style: AppTextStyles.textField,
            ),
          ),
        ],
      ),
    );
  }

  List<BankItem> onSearchChanged(String? v) {
    List<BankItem> temp = [];
    if (v != null && v.isNotEmpty) {
      for (BankItem bank in items) {
        if (bank.name.toLowerCase().contains(v.toLowerCase())) {
          temp.add(bank);
        }
      }
    } else {
      temp = items;
    }

    return temp;
  }

  Widget selectedItem() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Text(
            value?.name ?? "--Select a bank--",
            style: value == null
                ? AppTextStyles.textField
                    .copyWith(color: AppColors.textColor.withOpacity(.3))
                : AppTextStyles.textField,
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _BlueBusinessCategoryDropdown extends StatelessWidget {
  const _BlueBusinessCategoryDropdown({
    required this.items,
    required this.onChanged,
    this.value,
    required this.searchController,
  });

  final List<BusinessCategory> items;
  final ValueChanged<BusinessCategory?> onChanged;
  final BusinessCategory? value;
  final TextEditingController? searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<BusinessCategory>(
            items: items
                .map((e) => DropdownType(label: e.title, value: e))
                .toList(),
            selectedValue: value,
            canSearch: true,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchController: searchController,
            searchHint: "Search Banks",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      "Business category",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(BusinessCategory item) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.title,
              style: AppTextStyles.textField.copyWith(height: 1),
            ),
          ),
        ],
      ),
    );
  }

  List<BusinessCategory> onSearchChanged(String? v) {
    List<BusinessCategory> temp = [];
    if (v != null && v.isNotEmpty) {
      for (BusinessCategory category in items) {
        if (category.title.toLowerCase().contains(v.toLowerCase())) {
          temp.add(category);
        }
      }
    } else {
      temp = items;
    }

    return temp;
  }

  Widget selectedItem() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Text(
            value?.title ?? "--Select a category--",
            style: value == null
                ? AppTextStyles.textField
                    .copyWith(color: AppColors.textColor.withOpacity(.3))
                : AppTextStyles.textField,
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _BlueStringDropdown extends StatelessWidget {
  const _BlueStringDropdown({
    required this.items,
    required this.onChanged,
    this.value,
    required this.searchController,
    required this.title,
  });

  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  final TextEditingController? searchController;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<String>(
            items: items.map((e) => DropdownType(label: e, value: e)).toList(),
            selectedValue: value,
            canSearch: true,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchController: searchController,
            searchHint: "Search List",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      title,
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(String item) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item,
              style: AppTextStyles.textField.copyWith(height: 1),
            ),
          ),
        ],
      ),
    );
  }

  List<String> onSearchChanged(String? v) {
    List<String> temp = [];
    if (v != null && v.isNotEmpty) {
      for (String item in items) {
        if (item.toLowerCase().contains(v.toLowerCase())) {
          temp.add(item);
        }
      }
    } else {
      temp = items;
    }

    return temp;
  }

  Widget selectedItem() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Text(
            value ?? "--Select from the options below--",
            style: value == null
                ? AppTextStyles.textField
                    .copyWith(color: AppColors.textColor.withOpacity(.3))
                : AppTextStyles.textField,
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _$BlueDropdown<T> extends StatefulWidget {
  const _$BlueDropdown({
    required this.items,
    required this.onChanged,
    this.selectedValue,
    required this.selectedItemBuilder,
    required this.itemBuilder,
    this.canSearch = false,
    this.onSearchChanged,
    this.searchController,
    this.searchHint = "Search",
  });

  final List<DropdownType> items;
  final T? selectedValue;
  final Widget selectedItemBuilder;
  final Widget Function(T) itemBuilder;
  final ValueChanged<T?> onChanged;
  final ValueChanged<String?>? onSearchChanged;
  final TextEditingController? searchController;
  final bool canSearch;
  final String searchHint;

  @override
  State<_$BlueDropdown<T>> createState() => _$BlueDropdownState<T>();
}

class _$BlueDropdownState<T> extends State<_$BlueDropdown<T>> {
  List<DropdownType> _tempItemList = [];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        widget.onChanged(await onTap());
      },
      splashColor: AppColors.primary,
      child: widget.selectedItemBuilder,
    );
  }

  Future<T?> onTap() async {
    T? val = widget.selectedValue;
    _tempItemList = buildSearchList(widget.searchController!.text);
    await showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return DraggableScrollableSheet(
              initialChildSize: .5 +
                  (context.mediaQuery.viewInsets.bottom /
                      context.mediaQuery.size.height),
              expand: false,
              builder: (context, controller) {
                return Container(
                  height: context.mediaQuery.size.height / 2 +
                      context.mediaQuery.viewInsets.bottom,
                  margin: EdgeInsets.only(
                      left: 17,
                      right: 17,
                      bottom: 35 + context.mediaQuery.viewInsets.bottom),
                  padding: const EdgeInsets.only(left: 17, right: 17, top: 15),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      if (widget.canSearch)
                        BlueTextField.search(
                          controller: widget.searchController,
                          onSearchChanged: (value) {
                            setState(() {
                              _tempItemList = buildSearchList(value ?? "");
                            });
                          },
                        ),
                      Expanded(
                        child: _tempItemList.isEmpty
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppAssets.images.icons.error.image(),
                                  12.verticalGap,
                                  Text(
                                    "Wow, such empty...",
                                    style: AppTextStyles.header,
                                  ),
                                  8.verticalGap,
                                  Text(
                                    "Looks like nothing matches \"${widget.searchController!.text}\"",
                                  ),
                                ],
                              )
                            : buildList(controller, (i) {
                                val = _tempItemList[i].value;
                                Navigator.pop(context);
                                widget.searchController!.clear();
                              }),
                      ),
                    ],
                  ),
                );
              });
        });
      },
    );
    return val;
  }

  Widget buildList(ScrollController controller, Function(int i) onTap) {
    return ListView.builder(
        controller: controller,
        padding: const EdgeInsets.only(bottom: 15),
        itemCount: _tempItemList.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () {
              onTap(i);
            },
            child: widget.itemBuilder(_tempItemList[i].value),
          );
        });
  }

  buildSearchList(String query) {
    List<DropdownType> t = [];
    if (query.isEmpty) {
      t = widget.items;
    } else {
      for (DropdownType item in widget.items) {
        if (item.label.toLowerCase().contains(query.toLowerCase())) {
          t.add(item);
        }
      }
    }

    return t;
  }
}
