import 'dart:async';

import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/banks/item/bank.dart';
import 'package:blue_business/core/models/bills/get_packages/packages/packages.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/business_category/category/business_category.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/dropdown_type/dropdown_type.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/paging/error.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

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

  static Widget meterType({
    required ValueChanged<String?> onChanged,
    String? value,
  }) {
    return _BlueMeterTypeDropdown(
      onChanged: onChanged,
      value: value,
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

  static Widget billProviders({
    required List<BillProvider> banks,
    required ValueChanged<BillProvider?> onChanged,
    required TextEditingController? searchController,
    BillProvider? value,
    required String title,
  }) {
    return _BlueBillProviderDropdown(
        items: banks,
        onChanged: onChanged,
        value: value,
        searchController: searchController,
        title: title);
  }

  static Widget billPackages({
    required List<BillPackage> banks,
    required ValueChanged<BillPackage?> onChanged,
    required TextEditingController? searchController,
    BillPackage? value,
    required String title,
  }) {
    return _BlueBillPackageDropdown(
        items: banks,
        onChanged: onChanged,
        value: value,
        searchController: searchController,
        title: title);
  }

  static Widget businessCategories({
    required List<BusinessCategory> values,
    required ValueChanged<BusinessCategory?> onChanged,
    TextEditingController? searchController,
    BusinessCategory? value,
  }) {
    return _BlueBusinessCategoryDropdown(
      items: values,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
    );
  }

  static Widget branch({
    required PagingController<int, Branch> controller,
    required ValueChanged<Branch?> onChanged,
    TextEditingController? searchController,
    Branch? value,
  }) {
    return _BlueBranchDropdown(
      controller: controller,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
    );
  }

  static Widget show({
    required List<String> values,
    required ValueChanged<String?> onChanged,
    TextEditingController? searchController,
    String? value,
    String? title,
    double? height,
  }) {
    return _BlueStringDropdown(
      items: values,
      onChanged: onChanged,
      value: value,
      searchController: searchController,
      title: title,
      height: height,
    );
  }
}

class _BlueBranchDropdown extends StatefulWidget {
  const _BlueBranchDropdown({
    required this.controller,
    required this.onChanged,
    this.value,
    required this.searchController,
  });

  final PagingController<int, Branch> controller;
  final ValueChanged<Branch?> onChanged;
  final Branch? value;
  final TextEditingController? searchController;

  @override
  State<_BlueBranchDropdown> createState() => _BlueBranchDropdownState();
}

class _BlueBranchDropdownState extends State<_BlueBranchDropdown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BluePagedDropdown<Branch>(
            controller: widget.controller,
            selectedValue: widget.value,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: widget.onChanged,
            onSearchChanged: onSearchChanged,
            searchController: widget.searchController,
            searchHint: "Search Branches",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      "Set branch",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(Branch item) {
    return Container(
      height: 45.h,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.name,
              style: AppTextStyles.textField.copyWith(height: 1),
            ),
          ),
        ],
      ),
    );
  }

  Timer? searchTimer;

  onSearchChanged(String? val) async {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(milliseconds: 1500), () async {
      widget.controller.refresh();
    });
    return val;
  }

  Widget selectedItem() {
    return Container(
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.value?.name ?? "--Select from the options below--",
              style: widget.value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
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
      height: 85.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<BusinessCategory>(
            items: items
                .map((e) => DropdownType(label: e.title, value: e))
                .toList(),
            selectedValue: value,
            canSearch: searchController != null,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchController: searchController,
            searchHint: "Search Categories",
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
      height: 45.h,
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
      for (BusinessCategory item in items) {
        if (item.title.toLowerCase().contains(v.toLowerCase())) {
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
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value?.title ?? "--Select from the options below--",
              style: value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
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
  const _BlueStringDropdown(
      {required this.items,
      required this.onChanged,
      this.value,
      required this.searchController,
      this.title,
      this.height});

  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  final TextEditingController? searchController;
  final String? title;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) textFieldHeader(),
          _$BlueDropdown<String>(
            items: items.map((e) => DropdownType(label: e, value: e)).toList(),
            selectedValue: value,
            height: height,
            canSearch: searchController != null,
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
      title!,
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(String item) {
    return Container(
      height: 45.h,
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
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value ?? "--Select from the options below--",
              style: value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
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
      width: 60.w,
      height: 25.h,
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(4)),
      child: _$BlueDropdown<CountryCode>(
        items: items.map((e) => DropdownType(label: e.name, value: e)).toList(),
        selectedValue: value,
        //NOTE: canSearch should be true when more countries are added
        // height: .15,
        canSearch: false,
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
      height: 45.h,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          CountryFlag.fromCountryCode(
            item.countryCode,
            height: 25.h,
            width: 20.w,
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
      height: 25.h,
      width: 45.w,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (value != null)
            CountryFlag.fromCountryCode(
              value!.countryCode,
              height: 25.h,
              width: 20.w,
            ),
          10.horizontalGap,
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _BlueMeterTypeDropdown extends StatelessWidget {
  const _BlueMeterTypeDropdown({
    required this.onChanged,
    this.value,
  });

  final ValueChanged<String?> onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<String>(
            items: ["prepaid", "postpaid"]
                .map((e) => DropdownType(label: e, value: e))
                .toList(),
            height: .25,
            title: Text(
              "Select Meter type",
              style: AppTextStyles.textField,
            ),
            selectedValue: value,
            canSearch: false,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchHint: "Search Banks",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      "Meter type",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(String item) {
    return Container(
      height: 45.h,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item[0].toUpperCase() + item.substring(1),
              style: AppTextStyles.subHeader,
            ),
          ),
        ],
      ),
    );
  }

  List<String> onSearchChanged(String? v) {
    List<String> temp = [];
    if (v != null && v.isNotEmpty) {
      for (String bank in ["prepaid", "postpaid"]) {
        if (bank.toLowerCase().contains(v.toLowerCase())) {
          temp.add(bank);
        }
      }
    } else {
      temp = ["prepaid", "postpaid"];
    }

    return temp;
  }

  Widget selectedItem() {
    return Container(
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value == null
                  ? "--Select Meter Type--"
                  : value![0].toUpperCase() + value!.substring(1),
              style: value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
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
      height: 85.h,
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
      height: 45.h,
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
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value?.name ?? "--Select a bank--",
              style: value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _BlueBillPackageDropdown extends StatelessWidget {
  const _BlueBillPackageDropdown({
    required this.items,
    required this.onChanged,
    this.value,
    required this.searchController,
    required this.title,
  });

  final List<BillPackage> items;
  final ValueChanged<BillPackage?> onChanged;
  final BillPackage? value;
  final TextEditingController? searchController;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<BillPackage>(
            items: items
                .map((e) => DropdownType(label: e.name, value: e))
                .toList(),
            selectedValue: value,
            title: Text(
              "Select ${title.sentenceCase}s",
              style: AppTextStyles.textField,
            ),
            height: items.isEmpty
                ? .35
                : items.length * .1 <= .25
                    ? .25
                    : items.length * .1 > 1
                        ? null
                        : items.length * .1,
            canSearch: false,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchController: searchController,
            searchHint: "Search ${title.sentenceCase}s",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      "${title.sentenceCase}s",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(BillPackage item) {
    NumberFormat format = NumberFormat("#,##0.00");
    return Container(
      // height: 60,
      constraints: BoxConstraints(
        minHeight: 55.h,
      ),
      decoration: const BoxDecoration(),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "${item.name} - ",
            style: AppTextStyles.subHeader
                .copyWith(height: 1.2, fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: "${nairaSymbol()}${format.format(double.parse(item.amount))}",
            style: AppTextStyles.subHeader
                .copyWith(height: 1.2, fontWeight: FontWeight.w500),
          ),
        ]),
      ),
    );
  }

  List<BillPackage> onSearchChanged(String? v) {
    List<BillPackage> temp = [];
    if (v != null && v.isNotEmpty) {
      for (BillPackage item in items) {
        if (item.name.toLowerCase().contains(v.toLowerCase())) {
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
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value?.name ?? "--Select a $title",
              style: value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.textColor,
          )
        ],
      ),
    );
  }
}

class _BlueBillProviderDropdown extends StatelessWidget {
  const _BlueBillProviderDropdown({
    required this.items,
    required this.onChanged,
    this.value,
    required this.searchController,
    required this.title,
  });

  final List<BillProvider> items;
  final ValueChanged<BillProvider?> onChanged;
  final BillProvider? value;
  final TextEditingController? searchController;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.mediaQuery.size.width,
      height: 85.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldHeader(),
          _$BlueDropdown<BillProvider>(
            items: items
                .map((e) => DropdownType(label: e.name, value: e))
                .toList(),
            selectedValue: value,
            title: Text(
              "Select ${title.sentenceCase}s",
              style: AppTextStyles.textField,
            ),
            height: items.isEmpty
                ? .35
                : items.length * .1 < .25
                    ? .25
                    : items.length * .1 > 1
                        ? null
                        : items.length * .1,
            canSearch: false,
            selectedItemBuilder: selectedItem(),
            itemBuilder: itemBuilder,
            onChanged: onChanged,
            onSearchChanged: onSearchChanged,
            searchController: searchController,
            searchHint: "Search ${title.sentenceCase}s",
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return Text(
      "${title.sentenceCase}s",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
    );
  }

  Widget itemBuilder(BillProvider item) {
    return Container(
      height: 55.h,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          if (item.image != null) ...[
            BlueAvatar(
              radius: 19,
              imageUrl: item.image,
            ),
            12.horizontalGap
          ],
          Expanded(
            child: Text(
              item.name,
              style: AppTextStyles.subHeader.copyWith(height: 1.2),
            ),
          ),
        ],
      ),
    );
  }

  List<BillProvider> onSearchChanged(String? v) {
    List<BillProvider> temp = [];
    if (v != null && v.isNotEmpty) {
      for (BillProvider item in items) {
        if (item.name.toLowerCase().contains(v.toLowerCase())) {
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
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              value?.name ?? "--Select a $title",
              style: value == null
                  ? AppTextStyles.textField
                      .copyWith(color: AppColors.textColor.withOpacityValue(.3))
                  : AppTextStyles.textField,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          10.horizontalGap,
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
    this.height,
    this.title,
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
  final double? height;
  final Widget? title;

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
      splashColor: AppColors.primary.withOpacityValue(.15),
      child: widget.selectedItemBuilder,
    );
  }

  Future<T?> onTap() async {
    T? val = widget.selectedValue;
    _tempItemList = buildSearchList(widget.searchController?.text ?? "");
    await showModalBottomSheet(
      context: locator<AppRouter>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return DraggableScrollableSheet(
              minChildSize: .1,
              maxChildSize: .9,
              initialChildSize: (widget.height ?? .4) +
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
                      if (widget.title != null) ...[
                        widget.title!,
                        12.verticalGap,
                      ],
                      if (widget.canSearch)
                        BlueTextField.search(
                          controller: widget.searchController,
                          hint: widget.searchHint,
                          onSearchChanged: (value) {
                            setState(() {
                              _tempItemList = buildSearchList(value ?? "");
                            });
                          },
                        ),
                      Expanded(
                        child: _tempItemList.isEmpty
                            ? SizedBox(
                                width: context.mediaQuery.size.width,
                                child: Column(
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
                                      "Looks like nothing matches \"${widget.searchController?.text ?? ""}\"",
                                    ),
                                  ],
                                ),
                              )
                            : buildList(controller, (i) {
                                val = _tempItemList[i].value;
                                Navigator.pop(context);
                                widget.searchController?.clear();
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
    return ListView.separated(
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
      },
      separatorBuilder: (ctx, i) => 6.verticalGap,
    );
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

class _$BluePagedDropdown<T> extends StatefulWidget {
  const _$BluePagedDropdown({
    required this.controller,
    required this.onChanged,
    this.selectedValue,
    required this.selectedItemBuilder,
    required this.itemBuilder,
    this.onSearchChanged,
    this.searchController,
    this.searchHint = "Search",
    this.height,
    this.title,
  });

  final PagingController<int, T> controller;
  final T? selectedValue;
  final Widget selectedItemBuilder;
  final Widget Function(T) itemBuilder;
  final ValueChanged<T?> onChanged;
  final ValueChanged<String?>? onSearchChanged;
  final TextEditingController? searchController;
  final String searchHint;
  final double? height;
  final Widget? title;

  @override
  State<_$BluePagedDropdown<T>> createState() => _$BluePagedDropdownState<T>();
}

class _$BluePagedDropdownState<T> extends State<_$BluePagedDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        widget.onChanged(await onTap());
      },
      splashColor: AppColors.primary.withOpacityValue(.15),
      child: widget.selectedItemBuilder,
    );
  }

  Future<T?> onTap() async {
    T? val = widget.selectedValue;
    await showModalBottomSheet(
      context: locator<AppRouter>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return DraggableScrollableSheet(
              initialChildSize: widget.height ??
                  .4 +
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
                      if (widget.title != null) ...[
                        widget.title!,
                        12.verticalGap,
                      ],
                      if (widget.searchController != null)
                        BlueTextField.search(
                          controller: widget.searchController,
                          hint: widget.searchHint,
                          onSearchChanged: widget.onSearchChanged,
                        ),
                      Expanded(
                        child: PagedListView<int, T>.separated(
                            pagingController: widget.controller,
                            builderDelegate: PagedChildBuilderDelegate(
                                noItemsFoundIndicatorBuilder: (context) =>
                                    SizedBox(
                                      width: context.mediaQuery.size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AppAssets.images.icons.error.image(),
                                          12.verticalGap,
                                          Text(
                                            "Wow, such empty...",
                                            style: AppTextStyles.header,
                                          ),
                                          8.verticalGap,
                                          Text(
                                            "Looks like nothing matches \"${widget.searchController?.text ?? ""}\"",
                                          ),
                                        ],
                                      ),
                                    ),
                                firstPageProgressIndicatorBuilder: (context) =>
                                    Column(
                                      children: List.generate(
                                        4,
                                        (index) => Column(
                                          children: [
                                            BlueLoadingTile.withoutImage(),
                                            if (index < 3) 6.verticalGap,
                                          ],
                                        ),
                                      ),
                                    ),
                                firstPageErrorIndicatorBuilder: (ctx) => Column(
                                      children: [
                                        PagingError.firstPage(
                                          widget.controller.error.toString(),
                                          widget.controller.refresh,
                                        ),
                                      ],
                                    ),
                                newPageErrorIndicatorBuilder: (ctx) =>
                                    PagingError.firstPage(
                                      widget.controller.error.toString(),
                                      widget.controller.refresh,
                                    ),
                                newPageProgressIndicatorBuilder: (context) =>
                                    BlueLoadingTile.withImage(),
                                itemBuilder: (ctx, item, i) => GestureDetector(
                                      onTap: () {
                                        val = item;
                                        Navigator.pop(context);
                                      },
                                      child: widget.itemBuilder(item),
                                    )),
                            separatorBuilder: (ctx, i) => 6.verticalGap),
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
}
