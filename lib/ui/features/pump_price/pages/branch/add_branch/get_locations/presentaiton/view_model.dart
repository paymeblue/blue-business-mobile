import 'dart:async';

import 'package:blue_business/core/api/places_service/places_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/places/places_response.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';

class GetPumpPriceLocationsViewModel extends BaseViewModel {
  Timer? searchTimer;

  FetchState _pageState = FetchState.idle;
  FetchState get pageState => _pageState;
  set pageState(FetchState s) {
    _pageState = s;
    notifyListeners();
  }

  onSearchChanged(String? v) {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(seconds: 1), () async {
      await findLocations(v ?? "");
    });
  }

  List<PlaceResult> _results = [];
  List<PlaceResult> get results => _results;
  set results(List<PlaceResult> r) {
    _results = r;
    notifyListeners();
  }

  findLocations(String query) async {
    pageState = FetchState.loading;
    PlaceResponse resp = await PlacesService()
        .getPlaceSuggestions(
          query: query,
          key: 'AIzaSyCPDj8YSCdJ4TLkxEyCYG3cTLdvtbTMcYQ',
        )
        .onError((e, stackTrace) =>
            PlaceResponse(htmlAttributions: [], results: []));

    if (resp.results.isEmpty) {
      pageState = FetchState.success;
      PumpPriceToast.error(message: 'No suggestions found');
    } else {
      pageState = FetchState.error;
      results = resp.results;
    }
  }
}
