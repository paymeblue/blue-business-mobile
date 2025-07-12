// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router_config.dart';

/// generated route for
/// [AccountRecoveryView]
class AccountRecoveryRoute extends PageRouteInfo<AccountRecoveryRouteArgs> {
  AccountRecoveryRoute({
    Key? key,
    String? type,
    List<PageRouteInfo>? children,
  }) : super(
          AccountRecoveryRoute.name,
          args: AccountRecoveryRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'AccountRecoveryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AccountRecoveryRouteArgs>(
          orElse: () => const AccountRecoveryRouteArgs());
      return AccountRecoveryView(
        key: args.key,
        type: args.type,
      );
    },
  );
}

class AccountRecoveryRouteArgs {
  const AccountRecoveryRouteArgs({
    this.key,
    this.type,
  });

  final Key? key;

  final String? type;

  @override
  String toString() {
    return 'AccountRecoveryRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [AddBusinessDetailsView]
class AddBusinessDetailsRoute
    extends PageRouteInfo<AddBusinessDetailsRouteArgs> {
  AddBusinessDetailsRoute({
    Key? key,
    required SignupData data,
    List<PageRouteInfo>? children,
  }) : super(
          AddBusinessDetailsRoute.name,
          args: AddBusinessDetailsRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'AddBusinessDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddBusinessDetailsRouteArgs>();
      return AddBusinessDetailsView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class AddBusinessDetailsRouteArgs {
  const AddBusinessDetailsRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final SignupData data;

  @override
  String toString() {
    return 'AddBusinessDetailsRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [AddWithdrawalDetailsView]
class AddWithdrawalDetailsRoute extends PageRouteInfo<void> {
  const AddWithdrawalDetailsRoute({List<PageRouteInfo>? children})
      : super(
          AddWithdrawalDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddWithdrawalDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddWithdrawalDetailsView();
    },
  );
}

/// generated route for
/// [AirtimeDetailsView]
class AirtimeDetailsRoute extends PageRouteInfo<AirtimeDetailsRouteArgs> {
  AirtimeDetailsRoute({
    Key? key,
    required AirtimeDetails detail,
    List<PageRouteInfo>? children,
  }) : super(
          AirtimeDetailsRoute.name,
          args: AirtimeDetailsRouteArgs(
            key: key,
            detail: detail,
          ),
          initialChildren: children,
        );

  static const String name = 'AirtimeDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AirtimeDetailsRouteArgs>();
      return AirtimeDetailsView(
        key: args.key,
        detail: args.detail,
      );
    },
  );
}

class AirtimeDetailsRouteArgs {
  const AirtimeDetailsRouteArgs({
    this.key,
    required this.detail,
  });

  final Key? key;

  final AirtimeDetails detail;

  @override
  String toString() {
    return 'AirtimeDetailsRouteArgs{key: $key, detail: $detail}';
  }
}

/// generated route for
/// [BillsView]
class BillsRoute extends PageRouteInfo<void> {
  const BillsRoute({List<PageRouteInfo>? children})
      : super(
          BillsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BillsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BillsView();
    },
  );
}

/// generated route for
/// [BluePaymentView]
class BluePaymentRoute extends PageRouteInfo<BluePaymentRouteArgs> {
  BluePaymentRoute({
    Key? key,
    required InitiateTransactionData data,
    List<PageRouteInfo>? children,
  }) : super(
          BluePaymentRoute.name,
          args: BluePaymentRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'BluePaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BluePaymentRouteArgs>();
      return BluePaymentView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class BluePaymentRouteArgs {
  const BluePaymentRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final InitiateTransactionData data;

  @override
  String toString() {
    return 'BluePaymentRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [BranchHomeView]
class BranchHomeRoute extends PageRouteInfo<void> {
  const BranchHomeRoute({List<PageRouteInfo>? children})
      : super(
          BranchHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BranchHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BranchHomeView();
    },
  );
}

/// generated route for
/// [BranchInsightsView]
class BranchInsightsRoute extends PageRouteInfo<BranchInsightsRouteArgs> {
  BranchInsightsRoute({
    Key? key,
    required Branch branch,
    List<PageRouteInfo>? children,
  }) : super(
          BranchInsightsRoute.name,
          args: BranchInsightsRouteArgs(
            key: key,
            branch: branch,
          ),
          initialChildren: children,
        );

  static const String name = 'BranchInsightsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BranchInsightsRouteArgs>();
      return BranchInsightsView(
        key: args.key,
        branch: args.branch,
      );
    },
  );
}

class BranchInsightsRouteArgs {
  const BranchInsightsRouteArgs({
    this.key,
    required this.branch,
  });

  final Key? key;

  final Branch branch;

  @override
  String toString() {
    return 'BranchInsightsRouteArgs{key: $key, branch: $branch}';
  }
}

/// generated route for
/// [BusinessFeesView]
class BusinessFeesRoute extends PageRouteInfo<BusinessFeesRouteArgs> {
  BusinessFeesRoute({
    Key? key,
    required GetBusinessFeesData data,
    List<PageRouteInfo>? children,
  }) : super(
          BusinessFeesRoute.name,
          args: BusinessFeesRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'BusinessFeesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BusinessFeesRouteArgs>();
      return BusinessFeesView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class BusinessFeesRouteArgs {
  const BusinessFeesRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final GetBusinessFeesData data;

  @override
  String toString() {
    return 'BusinessFeesRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [CableDetailsView]
class CableDetailsRoute extends PageRouteInfo<CableDetailsRouteArgs> {
  CableDetailsRoute({
    Key? key,
    required CableDetails detail,
    List<PageRouteInfo>? children,
  }) : super(
          CableDetailsRoute.name,
          args: CableDetailsRouteArgs(
            key: key,
            detail: detail,
          ),
          initialChildren: children,
        );

  static const String name = 'CableDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CableDetailsRouteArgs>();
      return CableDetailsView(
        key: args.key,
        detail: args.detail,
      );
    },
  );
}

class CableDetailsRouteArgs {
  const CableDetailsRouteArgs({
    this.key,
    required this.detail,
  });

  final Key? key;

  final CableDetails detail;

  @override
  String toString() {
    return 'CableDetailsRouteArgs{key: $key, detail: $detail}';
  }
}

/// generated route for
/// [ChangePasswordView]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChangePasswordView();
    },
  );
}

/// generated route for
/// [ChangePinView]
class ChangePinRoute extends PageRouteInfo<void> {
  const ChangePinRoute({List<PageRouteInfo>? children})
      : super(
          ChangePinRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChangePinView();
    },
  );
}

/// generated route for
/// [ComingSoonView]
class ComingSoonRoute extends PageRouteInfo<void> {
  const ComingSoonRoute({List<PageRouteInfo>? children})
      : super(
          ComingSoonRoute.name,
          initialChildren: children,
        );

  static const String name = 'ComingSoonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ComingSoonView();
    },
  );
}

/// generated route for
/// [CompletePaymentView]
class CompletePaymentRoute extends PageRouteInfo<CompletePaymentRouteArgs> {
  CompletePaymentRoute({
    Key? key,
    required ConfirmTransactionViewArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          CompletePaymentRoute.name,
          args: CompletePaymentRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'CompletePaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CompletePaymentRouteArgs>();
      return CompletePaymentView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class CompletePaymentRouteArgs {
  const CompletePaymentRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ConfirmTransactionViewArgs args;

  @override
  String toString() {
    return 'CompletePaymentRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [ConfirmAirtimePinView]
class ConfirmAirtimePinRoute extends PageRouteInfo<ConfirmAirtimePinRouteArgs> {
  ConfirmAirtimePinRoute({
    Key? key,
    required ReviewAirtimeData data,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmAirtimePinRoute.name,
          args: ConfirmAirtimePinRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmAirtimePinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmAirtimePinRouteArgs>();
      return ConfirmAirtimePinView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class ConfirmAirtimePinRouteArgs {
  const ConfirmAirtimePinRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final ReviewAirtimeData data;

  @override
  String toString() {
    return 'ConfirmAirtimePinRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ConfirmCablePinView]
class ConfirmCablePinRoute extends PageRouteInfo<ConfirmCablePinRouteArgs> {
  ConfirmCablePinRoute({
    Key? key,
    required VerifyCableData data,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmCablePinRoute.name,
          args: ConfirmCablePinRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmCablePinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmCablePinRouteArgs>();
      return ConfirmCablePinView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class ConfirmCablePinRouteArgs {
  const ConfirmCablePinRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VerifyCableData data;

  @override
  String toString() {
    return 'ConfirmCablePinRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ConfirmDataPinView]
class ConfirmDataPinRoute extends PageRouteInfo<ConfirmDataPinRouteArgs> {
  ConfirmDataPinRoute({
    Key? key,
    required VerifyDataData data,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmDataPinRoute.name,
          args: ConfirmDataPinRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmDataPinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmDataPinRouteArgs>();
      return ConfirmDataPinView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class ConfirmDataPinRouteArgs {
  const ConfirmDataPinRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VerifyDataData data;

  @override
  String toString() {
    return 'ConfirmDataPinRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ConfirmElectricityPinView]
class ConfirmElectricityPinRoute
    extends PageRouteInfo<ConfirmElectricityPinRouteArgs> {
  ConfirmElectricityPinRoute({
    Key? key,
    required ConfirmPowerArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmElectricityPinRoute.name,
          args: ConfirmElectricityPinRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmElectricityPinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmElectricityPinRouteArgs>();
      return ConfirmElectricityPinView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class ConfirmElectricityPinRouteArgs {
  const ConfirmElectricityPinRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ConfirmPowerArgs args;

  @override
  String toString() {
    return 'ConfirmElectricityPinRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [ConfirmTransactionView]
class ConfirmTransactionRoute
    extends PageRouteInfo<ConfirmTransactionRouteArgs> {
  ConfirmTransactionRoute({
    Key? key,
    required ConfirmTransactionViewArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmTransactionRoute.name,
          args: ConfirmTransactionRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmTransactionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmTransactionRouteArgs>();
      return ConfirmTransactionView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class ConfirmTransactionRouteArgs {
  const ConfirmTransactionRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ConfirmTransactionViewArgs args;

  @override
  String toString() {
    return 'ConfirmTransactionRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [CreatePinView]
class CreatePinRoute extends PageRouteInfo<CreatePinRouteArgs> {
  CreatePinRoute({
    Key? key,
    required SignupData data,
    List<PageRouteInfo>? children,
  }) : super(
          CreatePinRoute.name,
          args: CreatePinRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'CreatePinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreatePinRouteArgs>();
      return CreatePinView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class CreatePinRouteArgs {
  const CreatePinRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final SignupData data;

  @override
  String toString() {
    return 'CreatePinRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [DashboardShellView]
class DashboardShellRoute extends PageRouteInfo<void> {
  const DashboardShellRoute({List<PageRouteInfo>? children})
      : super(
          DashboardShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardShellView();
    },
  );
}

/// generated route for
/// [DataDetailsView]
class DataDetailsRoute extends PageRouteInfo<DataDetailsRouteArgs> {
  DataDetailsRoute({
    Key? key,
    required DataDetails detail,
    List<PageRouteInfo>? children,
  }) : super(
          DataDetailsRoute.name,
          args: DataDetailsRouteArgs(
            key: key,
            detail: detail,
          ),
          initialChildren: children,
        );

  static const String name = 'DataDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DataDetailsRouteArgs>();
      return DataDetailsView(
        key: args.key,
        detail: args.detail,
      );
    },
  );
}

class DataDetailsRouteArgs {
  const DataDetailsRouteArgs({
    this.key,
    required this.detail,
  });

  final Key? key;

  final DataDetails detail;

  @override
  String toString() {
    return 'DataDetailsRouteArgs{key: $key, detail: $detail}';
  }
}

/// generated route for
/// [EnterBranchDetailsView]
class EnterBranchDetailsRoute
    extends PageRouteInfo<EnterBranchDetailsRouteArgs> {
  EnterBranchDetailsRoute({
    Key? key,
    Branch? branch,
    List<PageRouteInfo>? children,
  }) : super(
          EnterBranchDetailsRoute.name,
          args: EnterBranchDetailsRouteArgs(
            key: key,
            branch: branch,
          ),
          initialChildren: children,
        );

  static const String name = 'EnterBranchDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EnterBranchDetailsRouteArgs>(
          orElse: () => const EnterBranchDetailsRouteArgs());
      return EnterBranchDetailsView(
        key: args.key,
        branch: args.branch,
      );
    },
  );
}

class EnterBranchDetailsRouteArgs {
  const EnterBranchDetailsRouteArgs({
    this.key,
    this.branch,
  });

  final Key? key;

  final Branch? branch;

  @override
  String toString() {
    return 'EnterBranchDetailsRouteArgs{key: $key, branch: $branch}';
  }
}

/// generated route for
/// [EnterStaffDetailsView]
class EnterStaffDetailsRoute extends PageRouteInfo<EnterStaffDetailsRouteArgs> {
  EnterStaffDetailsRoute({
    Key? key,
    Staff? staff,
    List<PageRouteInfo>? children,
  }) : super(
          EnterStaffDetailsRoute.name,
          args: EnterStaffDetailsRouteArgs(
            key: key,
            staff: staff,
          ),
          initialChildren: children,
        );

  static const String name = 'EnterStaffDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EnterStaffDetailsRouteArgs>(
          orElse: () => const EnterStaffDetailsRouteArgs());
      return EnterStaffDetailsView(
        key: args.key,
        staff: args.staff,
      );
    },
  );
}

class EnterStaffDetailsRouteArgs {
  const EnterStaffDetailsRouteArgs({
    this.key,
    this.staff,
  });

  final Key? key;

  final Staff? staff;

  @override
  String toString() {
    return 'EnterStaffDetailsRouteArgs{key: $key, staff: $staff}';
  }
}

/// generated route for
/// [ErrorRouteView]
class ErrorRouteRoute extends PageRouteInfo<ErrorRouteRouteArgs> {
  ErrorRouteRoute({
    Key? key,
    required String? message,
    PageRouteInfo<dynamic>? newRoute,
    List<PageRouteInfo>? children,
  }) : super(
          ErrorRouteRoute.name,
          args: ErrorRouteRouteArgs(
            key: key,
            message: message,
            newRoute: newRoute,
          ),
          initialChildren: children,
        );

  static const String name = 'ErrorRouteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ErrorRouteRouteArgs>();
      return ErrorRouteView(
        key: args.key,
        message: args.message,
        newRoute: args.newRoute,
      );
    },
  );
}

class ErrorRouteRouteArgs {
  const ErrorRouteRouteArgs({
    this.key,
    required this.message,
    this.newRoute,
  });

  final Key? key;

  final String? message;

  final PageRouteInfo<dynamic>? newRoute;

  @override
  String toString() {
    return 'ErrorRouteRouteArgs{key: $key, message: $message, newRoute: $newRoute}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [InitiateAirtimeView]
class InitiateAirtimeRoute extends PageRouteInfo<void> {
  const InitiateAirtimeRoute({List<PageRouteInfo>? children})
      : super(
          InitiateAirtimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiateAirtimeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiateAirtimeView();
    },
  );
}

/// generated route for
/// [InitiateCableView]
class InitiateCableRoute extends PageRouteInfo<void> {
  const InitiateCableRoute({List<PageRouteInfo>? children})
      : super(
          InitiateCableRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiateCableRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiateCableView();
    },
  );
}

/// generated route for
/// [InitiateDataView]
class InitiateDataRoute extends PageRouteInfo<void> {
  const InitiateDataRoute({List<PageRouteInfo>? children})
      : super(
          InitiateDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiateDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiateDataView();
    },
  );
}

/// generated route for
/// [InitiateElectricityView]
class InitiateElectricityRoute extends PageRouteInfo<void> {
  const InitiateElectricityRoute({List<PageRouteInfo>? children})
      : super(
          InitiateElectricityRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiateElectricityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiateElectricityView();
    },
  );
}

/// generated route for
/// [InitiatePasswordResetView]
class InitiatePasswordResetRoute extends PageRouteInfo<void> {
  const InitiatePasswordResetRoute({List<PageRouteInfo>? children})
      : super(
          InitiatePasswordResetRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiatePasswordResetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiatePasswordResetView();
    },
  );
}

/// generated route for
/// [InitiatePhoneResetView]
class InitiatePhoneResetRoute extends PageRouteInfo<void> {
  const InitiatePhoneResetRoute({List<PageRouteInfo>? children})
      : super(
          InitiatePhoneResetRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiatePhoneResetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiatePhoneResetView();
    },
  );
}

/// generated route for
/// [InitiatePinResetView]
class InitiatePinResetRoute extends PageRouteInfo<InitiatePinResetRouteArgs> {
  InitiatePinResetRoute({
    Key? key,
    GetQuestionData? securityQuestion,
    List<PageRouteInfo>? children,
  }) : super(
          InitiatePinResetRoute.name,
          args: InitiatePinResetRouteArgs(
            key: key,
            securityQuestion: securityQuestion,
          ),
          initialChildren: children,
        );

  static const String name = 'InitiatePinResetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<InitiatePinResetRouteArgs>(
          orElse: () => const InitiatePinResetRouteArgs());
      return InitiatePinResetView(
        key: args.key,
        securityQuestion: args.securityQuestion,
      );
    },
  );
}

class InitiatePinResetRouteArgs {
  const InitiatePinResetRouteArgs({
    this.key,
    this.securityQuestion,
  });

  final Key? key;

  final GetQuestionData? securityQuestion;

  @override
  String toString() {
    return 'InitiatePinResetRouteArgs{key: $key, securityQuestion: $securityQuestion}';
  }
}

/// generated route for
/// [InitiateSignupView]
class InitiateSignupRoute extends PageRouteInfo<void> {
  const InitiateSignupRoute({List<PageRouteInfo>? children})
      : super(
          InitiateSignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitiateSignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitiateSignupView();
    },
  );
}

/// generated route for
/// [InitiateTransactionView]
class InitiateTransactionRoute
    extends PageRouteInfo<InitiateTransactionRouteArgs> {
  InitiateTransactionRoute({
    Key? key,
    PaymentMode? mode,
    List<PageRouteInfo>? children,
  }) : super(
          InitiateTransactionRoute.name,
          args: InitiateTransactionRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'InitiateTransactionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<InitiateTransactionRouteArgs>(
          orElse: () => const InitiateTransactionRouteArgs());
      return InitiateTransactionView(
        key: args.key,
        mode: args.mode,
      );
    },
  );
}

class InitiateTransactionRouteArgs {
  const InitiateTransactionRouteArgs({
    this.key,
    this.mode,
  });

  final Key? key;

  final PaymentMode? mode;

  @override
  String toString() {
    return 'InitiateTransactionRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [InsightsView]
class InsightsRoute extends PageRouteInfo<void> {
  const InsightsRoute({List<PageRouteInfo>? children})
      : super(
          InsightsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsightsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InsightsView();
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginView();
    },
  );
}

/// generated route for
/// [ManageBeneficiariesView]
class ManageBeneficiariesRoute extends PageRouteInfo<void> {
  const ManageBeneficiariesRoute({List<PageRouteInfo>? children})
      : super(
          ManageBeneficiariesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManageBeneficiariesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ManageBeneficiariesView();
    },
  );
}

/// generated route for
/// [PaymentDetailsView]
class PaymentDetailsRoute extends PageRouteInfo<PaymentDetailsRouteArgs> {
  PaymentDetailsRoute({
    Key? key,
    required PaymentDetail detail,
    String type = "debit",
    List<PageRouteInfo>? children,
  }) : super(
          PaymentDetailsRoute.name,
          args: PaymentDetailsRouteArgs(
            key: key,
            detail: detail,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentDetailsRouteArgs>();
      return PaymentDetailsView(
        key: args.key,
        detail: args.detail,
        type: args.type,
      );
    },
  );
}

class PaymentDetailsRouteArgs {
  const PaymentDetailsRouteArgs({
    this.key,
    required this.detail,
    this.type = "debit",
  });

  final Key? key;

  final PaymentDetail detail;

  final String type;

  @override
  String toString() {
    return 'PaymentDetailsRouteArgs{key: $key, detail: $detail, type: $type}';
  }
}

/// generated route for
/// [PaymentLinkHistoryView]
class PaymentLinkHistoryRoute extends PageRouteInfo<void> {
  const PaymentLinkHistoryRoute({List<PageRouteInfo>? children})
      : super(
          PaymentLinkHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentLinkHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentLinkHistoryView();
    },
  );
}

/// generated route for
/// [PaymentSuccessView]
class PaymentSuccessRoute extends PageRouteInfo<PaymentSuccessRouteArgs> {
  PaymentSuccessRoute({
    Key? key,
    required PaymentSuccessViewArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentSuccessRoute.name,
          args: PaymentSuccessRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentSuccessRouteArgs>();
      return PaymentSuccessView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class PaymentSuccessRouteArgs {
  const PaymentSuccessRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final PaymentSuccessViewArgs args;

  @override
  String toString() {
    return 'PaymentSuccessRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [PersonalInfoView]
class PersonalInfoRoute extends PageRouteInfo<void> {
  const PersonalInfoRoute({List<PageRouteInfo>? children})
      : super(
          PersonalInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PersonalInfoView();
    },
  );
}

/// generated route for
/// [PhonePaymentView]
class PhonePaymentRoute extends PageRouteInfo<PhonePaymentRouteArgs> {
  PhonePaymentRoute({
    Key? key,
    required InitiateTransactionData data,
    List<PageRouteInfo>? children,
  }) : super(
          PhonePaymentRoute.name,
          args: PhonePaymentRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'PhonePaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PhonePaymentRouteArgs>();
      return PhonePaymentView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class PhonePaymentRouteArgs {
  const PhonePaymentRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final InitiateTransactionData data;

  @override
  String toString() {
    return 'PhonePaymentRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [PowerDetailsView]
class PowerDetailsRoute extends PageRouteInfo<PowerDetailsRouteArgs> {
  PowerDetailsRoute({
    Key? key,
    required PowerDetails detail,
    List<PageRouteInfo>? children,
  }) : super(
          PowerDetailsRoute.name,
          args: PowerDetailsRouteArgs(
            key: key,
            detail: detail,
          ),
          initialChildren: children,
        );

  static const String name = 'PowerDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PowerDetailsRouteArgs>();
      return PowerDetailsView(
        key: args.key,
        detail: args.detail,
      );
    },
  );
}

class PowerDetailsRouteArgs {
  const PowerDetailsRouteArgs({
    this.key,
    required this.detail,
  });

  final Key? key;

  final PowerDetails detail;

  @override
  String toString() {
    return 'PowerDetailsRouteArgs{key: $key, detail: $detail}';
  }
}

/// generated route for
/// [QrPaymentView]
class QrPaymentRoute extends PageRouteInfo<QrPaymentRouteArgs> {
  QrPaymentRoute({
    Key? key,
    required InitiateTransactionData data,
    List<PageRouteInfo>? children,
  }) : super(
          QrPaymentRoute.name,
          args: QrPaymentRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'QrPaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QrPaymentRouteArgs>();
      return QrPaymentView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class QrPaymentRouteArgs {
  const QrPaymentRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final InitiateTransactionData data;

  @override
  String toString() {
    return 'QrPaymentRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ReceiveMoneyView]
class ReceiveMoneyRoute extends PageRouteInfo<void> {
  const ReceiveMoneyRoute({List<PageRouteInfo>? children})
      : super(
          ReceiveMoneyRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReceiveMoneyRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ReceiveMoneyView();
    },
  );
}

/// generated route for
/// [ResetPasswordView]
class ResetPasswordRoute extends PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    Key? key,
    required String phone,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return ResetPasswordView(
        key: args.key,
        phone: args.phone,
      );
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [ResetPhoneView]
class ResetPhoneRoute extends PageRouteInfo<ResetPhoneRouteArgs> {
  ResetPhoneRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPhoneRoute.name,
          args: ResetPhoneRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPhoneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPhoneRouteArgs>();
      return ResetPhoneView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class ResetPhoneRouteArgs {
  const ResetPhoneRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ResetPhoneRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [ResetPinView]
class ResetPinRoute extends PageRouteInfo<ResetPinRouteArgs> {
  ResetPinRoute({
    Key? key,
    required String phone,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPinRoute.name,
          args: ResetPinRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPinRouteArgs>();
      return ResetPinView(
        key: args.key,
        phone: args.phone,
      );
    },
  );
}

class ResetPinRouteArgs {
  const ResetPinRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'ResetPinRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [ReviewAirtimeView]
class ReviewAirtimeRoute extends PageRouteInfo<ReviewAirtimeRouteArgs> {
  ReviewAirtimeRoute({
    Key? key,
    required ReviewAirtimeData data,
    List<PageRouteInfo>? children,
  }) : super(
          ReviewAirtimeRoute.name,
          args: ReviewAirtimeRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewAirtimeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewAirtimeRouteArgs>();
      return ReviewAirtimeView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class ReviewAirtimeRouteArgs {
  const ReviewAirtimeRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final ReviewAirtimeData data;

  @override
  String toString() {
    return 'ReviewAirtimeRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ReviewCableView]
class ReviewCableRoute extends PageRouteInfo<ReviewCableRouteArgs> {
  ReviewCableRoute({
    Key? key,
    required VerifyCableData data,
    List<PageRouteInfo>? children,
  }) : super(
          ReviewCableRoute.name,
          args: ReviewCableRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewCableRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewCableRouteArgs>();
      return ReviewCableView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class ReviewCableRouteArgs {
  const ReviewCableRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VerifyCableData data;

  @override
  String toString() {
    return 'ReviewCableRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ReviewDataView]
class ReviewDataRoute extends PageRouteInfo<ReviewDataRouteArgs> {
  ReviewDataRoute({
    Key? key,
    required VerifyDataData data,
    List<PageRouteInfo>? children,
  }) : super(
          ReviewDataRoute.name,
          args: ReviewDataRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewDataRouteArgs>();
      return ReviewDataView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class ReviewDataRouteArgs {
  const ReviewDataRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VerifyDataData data;

  @override
  String toString() {
    return 'ReviewDataRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [ReviewElectricityView]
class ReviewElectricityRoute extends PageRouteInfo<ReviewElectricityRouteArgs> {
  ReviewElectricityRoute({
    Key? key,
    required ConfirmPowerArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          ReviewElectricityRoute.name,
          args: ReviewElectricityRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewElectricityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewElectricityRouteArgs>();
      return ReviewElectricityView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class ReviewElectricityRouteArgs {
  const ReviewElectricityRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ConfirmPowerArgs args;

  @override
  String toString() {
    return 'ReviewElectricityRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [SelectShareholderView]
class SelectShareholderRoute extends PageRouteInfo<SelectShareholderRouteArgs> {
  SelectShareholderRoute({
    Key? key,
    required SignupData data,
    List<PageRouteInfo>? children,
  }) : super(
          SelectShareholderRoute.name,
          args: SelectShareholderRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectShareholderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectShareholderRouteArgs>();
      return SelectShareholderView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class SelectShareholderRouteArgs {
  const SelectShareholderRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final SignupData data;

  @override
  String toString() {
    return 'SelectShareholderRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [SettingsView]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsView();
    },
  );
}

/// generated route for
/// [ShareholderKycView]
class ShareholderKycRoute extends PageRouteInfo<ShareholderKycRouteArgs> {
  ShareholderKycRoute({
    Key? key,
    required ShareholderKycViewArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          ShareholderKycRoute.name,
          args: ShareholderKycRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ShareholderKycRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ShareholderKycRouteArgs>();
      return ShareholderKycView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class ShareholderKycRouteArgs {
  const ShareholderKycRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ShareholderKycViewArgs args;

  @override
  String toString() {
    return 'ShareholderKycRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [SignupProgressView]
class SignupProgressRoute extends PageRouteInfo<SignupProgressRouteArgs> {
  SignupProgressRoute({
    Key? key,
    required SignupData data,
    List<PageRouteInfo>? children,
  }) : super(
          SignupProgressRoute.name,
          args: SignupProgressRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SignupProgressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignupProgressRouteArgs>();
      return SignupProgressView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class SignupProgressRouteArgs {
  const SignupProgressRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final SignupData data;

  @override
  String toString() {
    return 'SignupProgressRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashView();
    },
  );
}

/// generated route for
/// [StaffHomeView]
class StaffHomeRoute extends PageRouteInfo<void> {
  const StaffHomeRoute({List<PageRouteInfo>? children})
      : super(
          StaffHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'StaffHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StaffHomeView();
    },
  );
}

/// generated route for
/// [TransactionErrorView]
class TransactionErrorRoute extends PageRouteInfo<TransactionErrorRouteArgs> {
  TransactionErrorRoute({
    Key? key,
    required String error,
    List<PageRouteInfo>? children,
  }) : super(
          TransactionErrorRoute.name,
          args: TransactionErrorRouteArgs(
            key: key,
            error: error,
          ),
          initialChildren: children,
        );

  static const String name = 'TransactionErrorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionErrorRouteArgs>();
      return TransactionErrorView(
        key: args.key,
        error: args.error,
      );
    },
  );
}

class TransactionErrorRouteArgs {
  const TransactionErrorRouteArgs({
    this.key,
    required this.error,
  });

  final Key? key;

  final String error;

  @override
  String toString() {
    return 'TransactionErrorRouteArgs{key: $key, error: $error}';
  }
}

/// generated route for
/// [TransactionHistoryView]
class TransactionHistoryRoute extends PageRouteInfo<void> {
  const TransactionHistoryRoute({List<PageRouteInfo>? children})
      : super(
          TransactionHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionHistoryView();
    },
  );
}

/// generated route for
/// [VendAirtimeSuccessView]
class VendAirtimeSuccessRoute
    extends PageRouteInfo<VendAirtimeSuccessRouteArgs> {
  VendAirtimeSuccessRoute({
    Key? key,
    required VendAirtimeData data,
    List<PageRouteInfo>? children,
  }) : super(
          VendAirtimeSuccessRoute.name,
          args: VendAirtimeSuccessRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VendAirtimeSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendAirtimeSuccessRouteArgs>();
      return VendAirtimeSuccessView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class VendAirtimeSuccessRouteArgs {
  const VendAirtimeSuccessRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VendAirtimeData data;

  @override
  String toString() {
    return 'VendAirtimeSuccessRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [VendCableSuccessView]
class VendCableSuccessRoute extends PageRouteInfo<VendCableSuccessRouteArgs> {
  VendCableSuccessRoute({
    Key? key,
    required VendCableData data,
    List<PageRouteInfo>? children,
  }) : super(
          VendCableSuccessRoute.name,
          args: VendCableSuccessRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VendCableSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendCableSuccessRouteArgs>();
      return VendCableSuccessView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class VendCableSuccessRouteArgs {
  const VendCableSuccessRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VendCableData data;

  @override
  String toString() {
    return 'VendCableSuccessRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [VendDataSuccessView]
class VendDataSuccessRoute extends PageRouteInfo<VendDataSuccessRouteArgs> {
  VendDataSuccessRoute({
    Key? key,
    required VendDataData data,
    List<PageRouteInfo>? children,
  }) : super(
          VendDataSuccessRoute.name,
          args: VendDataSuccessRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VendDataSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendDataSuccessRouteArgs>();
      return VendDataSuccessView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class VendDataSuccessRouteArgs {
  const VendDataSuccessRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VendDataData data;

  @override
  String toString() {
    return 'VendDataSuccessRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [VendElectricitySuccessView]
class VendElectricitySuccessRoute
    extends PageRouteInfo<VendElectricitySuccessRouteArgs> {
  VendElectricitySuccessRoute({
    Key? key,
    required VendElectricityData data,
    List<PageRouteInfo>? children,
  }) : super(
          VendElectricitySuccessRoute.name,
          args: VendElectricitySuccessRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VendElectricitySuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendElectricitySuccessRouteArgs>();
      return VendElectricitySuccessView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class VendElectricitySuccessRouteArgs {
  const VendElectricitySuccessRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final VendElectricityData data;

  @override
  String toString() {
    return 'VendElectricitySuccessRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [VerifyPasswordOtpView]
class VerifyPasswordOtpRoute extends PageRouteInfo<VerifyPasswordOtpRouteArgs> {
  VerifyPasswordOtpRoute({
    Key? key,
    required VerifySignupOtpArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPasswordOtpRoute.name,
          args: VerifyPasswordOtpRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyPasswordOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyPasswordOtpRouteArgs>();
      return VerifyPasswordOtpView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class VerifyPasswordOtpRouteArgs {
  const VerifyPasswordOtpRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final VerifySignupOtpArgs args;

  @override
  String toString() {
    return 'VerifyPasswordOtpRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [VerifyPhoneOtpView]
class VerifyPhoneOtpRoute extends PageRouteInfo<VerifyPhoneOtpRouteArgs> {
  VerifyPhoneOtpRoute({
    Key? key,
    required SendNewPhoneData data,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPhoneOtpRoute.name,
          args: VerifyPhoneOtpRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyPhoneOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyPhoneOtpRouteArgs>();
      return VerifyPhoneOtpView(
        key: args.key,
        data: args.data,
      );
    },
  );
}

class VerifyPhoneOtpRouteArgs {
  const VerifyPhoneOtpRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final SendNewPhoneData data;

  @override
  String toString() {
    return 'VerifyPhoneOtpRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [VerifyPinOtpView]
class VerifyPinOtpRoute extends PageRouteInfo<VerifyPinOtpRouteArgs> {
  VerifyPinOtpRoute({
    Key? key,
    required VerifySignupOtpArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          VerifyPinOtpRoute.name,
          args: VerifyPinOtpRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyPinOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyPinOtpRouteArgs>();
      return VerifyPinOtpView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class VerifyPinOtpRouteArgs {
  const VerifyPinOtpRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final VerifySignupOtpArgs args;

  @override
  String toString() {
    return 'VerifyPinOtpRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [VerifySignupOtpView]
class VerifySignupOtpRoute extends PageRouteInfo<VerifySignupOtpRouteArgs> {
  VerifySignupOtpRoute({
    Key? key,
    required VerifySignupOtpArgs args,
    List<PageRouteInfo>? children,
  }) : super(
          VerifySignupOtpRoute.name,
          args: VerifySignupOtpRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifySignupOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifySignupOtpRouteArgs>();
      return VerifySignupOtpView(
        key: args.key,
        args: args.args,
      );
    },
  );
}

class VerifySignupOtpRouteArgs {
  const VerifySignupOtpRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final VerifySignupOtpArgs args;

  @override
  String toString() {
    return 'VerifySignupOtpRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [WalletView]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletView();
    },
  );
}

/// generated route for
/// [WelcomeView]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomeView();
    },
  );
}

/// generated route for
/// [WithdrawalMethodView]
class WithdrawalMethodRoute extends PageRouteInfo<void> {
  const WithdrawalMethodRoute({List<PageRouteInfo>? children})
      : super(
          WithdrawalMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'WithdrawalMethodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WithdrawalMethodView();
    },
  );
}
