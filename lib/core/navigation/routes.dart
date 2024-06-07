import 'dart:developer';

import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/models/bills/airtime/vend/data/vend_airtime_data.dart';
import 'package:blue_business/core/models/bills/cable/vend/data/vend_cable_data.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/models/bills/data/vend/data/vend_data_data.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:blue_business/core/models/bills/electricity/vend/data/vend_electricity_data.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/models/transaction_detail/airtime/airtime_details.dart';
import 'package:blue_business/core/models/transaction_detail/cable/cable_details.dart';
import 'package:blue_business/core/models/transaction_detail/data/data_details.dart';
import 'package:blue_business/core/models/transaction_detail/payment/payment_detail.dart';
import 'package:blue_business/core/models/transaction_detail/power/power_details.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/navigation/screens.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/airtime/pin/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/airtime/review/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/airtime/success/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/cable/initiate/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/cable/pin/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/cable/review/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/cable/success/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/data/initiate/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/data/pin/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/data/review/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/data/success/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/electicity/initiate/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/electicity/pin/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/electicity/review/presentation/view.dart';
import 'package:blue_business/modules/bill_pages/electicity/success/presentation/view.dart';
import 'package:blue_business/modules/bills/presentation/view.dart';
import 'package:blue_business/modules/branch_management_pages/add/presentation/view.dart';
import 'package:blue_business/modules/branch_management_pages/home/presentation/view.dart';
import 'package:blue_business/modules/dashboard_pages/loans/presentation/view.dart';
import 'package:blue_business/modules/push_payment_pin/presentation/view.dart';
import 'package:blue_business/modules/staff_management_pages/add/presentation/view.dart';
import 'package:blue_business/modules/staff_management_pages/home/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/airtime_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/cable_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/data_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/payment_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/power_details/presentation/view.dart';
import 'package:blue_business/modules/wallet/presentation/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

late StatefulNavigationShell signupChild;

GoRouter router = GoRouter(
  errorBuilder: (context, state) {
    log(state.error?.message ?? "");
    log(state.matchedLocation);
    return ErrorRouteView(
      message: state.error?.message,
      newRoute: state.matchedLocation.startsWith("/dash")
          ? RoutePaths.homePath
          : RoutePaths.loginPath,
    );
  },
  redirect: (context, state) {
    // AppStateValues stateValues = locator<AppStateValues>();
    // if (stateValues.currentUser == null &&
    //     state.matchedLocation.contains("/dash")) {
    //   return RoutePaths.loginPath;
    // }
    return state.matchedLocation;
  },
  initialLocation: "/",
  navigatorKey: locator<NavigationService>().navigatorKey,
  routes: [
    GoRoute(
      path: RoutePaths.splashPath,
      name: "Splash",
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: RoutePaths.welcomePath,
      name: "Welcome",
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: RoutePaths.loginPath,
      name: "Login",
      builder: (context, state) {
        return LoginView(
          onComplete: state.extra as VoidCallback?,
        );
      },
    ),
    ShellRoute(
      navigatorKey: locator<NavigationService>().shellKey,
      builder: (context, state, child) {
        int index = 0;
        if (state.matchedLocation.startsWith(RoutePaths.registerOtpPath)) {
          index = 1;
        } else if (state.matchedLocation
            .endsWith(RoutePaths.addPersonalInfoPath)) {
          index = 2;
        } else if (state.matchedLocation
                .endsWith(RoutePaths.createPasswordPath) ||
            state.matchedLocation.startsWith(
              RoutePaths.confirmPasswordPath,
            )) {
          index = 3;
        }
        return SignupShellView(
          currentIndex: index,
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: RoutePaths.addAccountPhonePath,
          name: "Add Account Phone Number",
          builder: (context, state) {
            log(state.fullPath.toString());
            return const EnterAccountPhoneView();
          },
        ),
        GoRoute(
          path: "${RoutePaths.registerOtpPath}/:phone",
          name: "Verify Registration Otp",
          builder: (context, state) {
            String phone = state.pathParameters["phone"] as String;
            log(state.fullPath.toString());
            return VerifyRegistrationOtpView(
              phone: phone,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.confirmPasswordPath}/:phone",
          builder: (context, state) {
            String phone = state.pathParameters["phone"] as String;
            return ConfirmPasswordView(
              phone: phone,
            );
          },
        ),
        GoRoute(
          path: "/:id${RoutePaths.addPersonalInfoPath}",
          name: "Add Personal Info",
          builder: (context, state) {
            log(state.fullPath.toString());
            return AddPersonalInfoView(
              id: state.pathParameters["id"].toString(),
            );
          },
        ),
        GoRoute(
          path: "/:id${RoutePaths.createPasswordPath}",
          name: "Create Password",
          builder: (context, state) {
            log(state.fullPath.toString());
            SignupProfileRequest r = state.extra! as SignupProfileRequest;
            return AddPasswordView(
              id: state.pathParameters["id"].toString(),
              request: r,
            );
          },
        ),
      ],
    ),
    ShellRoute(
      navigatorKey: locator<NavigationService>().shellKey,
      builder: (context, state, child) {
        int index = 0;
        if (state.matchedLocation.startsWith(RoutePaths.businessSizePath)) {
          index = 1;
        } else if (state.matchedLocation
            .startsWith(RoutePaths.businessLocation)) {
          index = 2;
        }
        return SetupBusinessShellView(
          currentIndex: index,
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: RoutePaths.businessNamePath,
          name: "Add Business Name",
          builder: (context, state) {
            log(state.fullPath.toString());
            return const AddBusinessNameView();
          },
        ),
        GoRoute(
          path: "${RoutePaths.businessSizePath}/:id",
          name: "Add Business Size and Branding",
          builder: (context, state) {
            String id = state.pathParameters["id"] as String;
            log(state.matchedLocation);
            return AddSizeView(
              id: int.parse(id),
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.businessLocation}/:id",
          name: "Add Business Location",
          builder: (context, state) {
            String id = state.pathParameters["id"] as String;
            log(state.matchedLocation);
            return AddLocationView(
              id: int.parse(id),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.registerSuccessPath,
      builder: (context, state) {
        return const RegisterSuccessView();
      },
    ),
    ShellRoute(
        builder: (context, state, child) {
          return PhoneRecoveryShellView(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: RoutePaths.enterRecoveryCodePath,
            name: "Enter Recovery Code",
            builder: (context, state) {
              log(state.fullPath.toString());
              return const EnterRecoveryCodeView();
            },
          ),
          GoRoute(
            path: "${RoutePaths.recoverPhoneNumberPath}/:id",
            name: "Recover Account Phone Number",
            builder: (context, state) {
              log(state.fullPath.toString());
              return EnterNewPhoneView(
                id: int.parse(state.pathParameters["id"] as String),
              );
            },
          ),
          GoRoute(
            path: "${RoutePaths.phoneRecoveryOtpPath}/:phone",
            name: "Verify Recovery Otp",
            builder: (context, state) {
              String phone = state.pathParameters["phone"] as String;
              log(state.fullPath.toString());
              return VerifyRecoveryOtpView(
                phone: phone,
              );
            },
          ),
        ]),
    ShellRoute(
        builder: (context, state, child) {
          return PasswordRecoveryShellView(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: RoutePaths.passwordRecoveryPhonePath,
            name: "Enter Recovery Phone Number",
            builder: (context, state) {
              log(state.fullPath.toString());
              return const EnterPasswordRecoveryPhoneView();
            },
          ),
          GoRoute(
            path: "${RoutePaths.passwordRecoveryOtpPath}/:phone",
            name: "Verify Password Recovery Otp",
            builder: (context, state) {
              String phone = state.pathParameters["phone"] as String;
              log(state.fullPath.toString());
              return VerifyPasswordRecoveryOtpView(phone: phone);
            },
          ),
          GoRoute(
            path: "${RoutePaths.recoverPasswordPath}/:phone",
            name: "Create New Password",
            builder: (context, state) {
              log(state.fullPath.toString());
              return AddNewPasswordView(
                phone: state.pathParameters["phone"].toString(),
              );
            },
          ),
        ]),
    ShellRoute(
        builder: (context, state, child) {
          return PinRecoveryShellView(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: RoutePaths.pinRecoveryPhonePath,
            name: "Enter Pin Recovery Phone Number",
            builder: (context, state) {
              log(state.matchedLocation);
              return EnterPinRecoveryPhoneView(
                  securityQuestion: state.extra as SecurityQuestion?);
            },
          ),
          GoRoute(
            path: "${RoutePaths.pinRecoveryOtpPath}/:phone",
            name: "Verify Pin Recovery Otp",
            builder: (context, state) {
              String phone = state.pathParameters["phone"] as String;
              log(state.fullPath.toString());
              return VerifyPinRecoveryOtpView(phone: phone);
            },
          ),
          GoRoute(
            path: "${RoutePaths.recoverPinPath}/:phone",
            name: "Create New Pin",
            builder: (context, state) {
              log(state.fullPath.toString());
              return AddNewPinView(
                phone: state.pathParameters["phone"].toString(),
              );
            },
          ),
        ]),
    GoRoute(
      path: "/:id${RoutePaths.pinPath}",
      builder: (context, state) {
        log(state.fullPath.toString());
        SignupProfileRequest r = state.extra! as SignupProfileRequest;
        return PinView(
          id: state.pathParameters["id"].toString(),
          request: r,
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return DashboardShellView(
          child: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.homePath,
              name: "Home",
              builder: (context, state) {
                log(state.fullPath.toString());
                return const HomeView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.insightsPath,
              name: "Insights",
              builder: (context, state) {
                log(state.fullPath.toString());
                return const InsightsView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.loansPath,
              name: "Loans",
              builder: (context, state) {
                log(state.fullPath.toString());
                return const LoansView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.settingsPath,
              name: "Settings",
              builder: (context, state) {
                log(state.fullPath.toString());
                return const SettingsView();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.receiveMoneyPath,
      name: "Receive Money",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const ReceiveMoneyView();
      },
    ),
    GoRoute(
      path: RoutePaths.transactionHistoryPath,
      name: "Transaction History",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const TransactionHistoryView();
      },
    ),
    GoRoute(
      path: RoutePaths.paymentLinkPath,
      name: "Payment Link History",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const PaymentLinkHistoryView();
      },
    ),
    GoRoute(
      path: RoutePaths.manageBeneficiaryPath,
      name: "Manage Beneficiaries",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const ManageBeneficiariesView();
      },
    ),
    GoRoute(
      path: RoutePaths.updateKycPath,
      name: "Update KYC",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const UpdateKycView();
      },
    ),
    GoRoute(
      path: RoutePaths.changePinPath,
      name: "Change PIN",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const ChangePinView();
      },
    ),
    GoRoute(
      path: RoutePaths.changePasswordPath,
      name: "Change Password",
      builder: (context, state) {
        log(state.fullPath.toString());
        return const ChangePasswordView();
      },
    ),
    ShellRoute(
      builder: (context, state, child) {
        int index = 0;
        if (state.matchedLocation.startsWith(RoutePaths.verifyReceiverPath)) {
          index = 1;
        } else if (state.matchedLocation
            .startsWith(RoutePaths.confirmPaymentPath)) {
          index = 2;
        } else if (state.matchedLocation
            .startsWith(RoutePaths.transactionPinPath)) {
          index = 3;
        }
        return TransactionShellView(
          currentIndex: index,
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: "${RoutePaths.initiateTransactionPath}/:action",
          name: "Initiate Transaction",
          builder: (context, state) {
            log(state.fullPath.toString());
            return InitiatePaymentView(
              isWithdrawal: state.pathParameters["action"] == "withdraw",
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/offline",
          name: "Pay Offline",
          builder: (context, state) {
            log(state.fullPath.toString());
            return const OfflinePaymentView();
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/blue-user",
          name: "Verify Blue Receiver",
          builder: (context, state) {
            log(state.uri.toString());
            return BluePaymentView(
              data: state.extra as InitiateTransactionData,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/qr",
          name: "Scan QR Code",
          builder: (context, state) {
            log(state.uri.toString());
            return QrPaymentView(
              data: state.extra as InitiateTransactionData,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/phone",
          name: "Verify Phone Receiver",
          builder: (context, state) {
            log(state.fullPath.toString());
            return PhonePaymentView(
              data: state.extra as InitiateTransactionData,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.confirmPaymentPath}/:action/:transaction_id",
          name: "Confirm Transaction",
          builder: (context, state) {
            log(state.matchedLocation.toString());
            int? amount;
            VerifiedReceiver? data;
            if (state.pathParameters["action"] == "withdraw") {
              amount = state.extra as int;
            } else {
              data = state.extra as VerifiedReceiver;
            }
            return ConfirmPaymentView(
              mode: state.pathParameters["action"] as String,
              data: data,
              transactionId: state.pathParameters["transaction_id"] as String,
              amount: amount,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.transactionPinPath}/:action/:transaction_id",
          name: "Enter Transaction Pin",
          builder: (context, state) {
            log(state.matchedLocation.toString());
            int? amount;
            VerifiedReceiver? data;
            if (state.pathParameters["action"] == "withdraw") {
              amount = state.extra as int;
            } else {
              data = state.extra as VerifiedReceiver;
            }
            return ConfirmTransactionPinView(
              mode: state.pathParameters["action"] as String,
              data: data,
              transactionId: state.pathParameters["transaction_id"] as String,
              amount: amount,
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: "${RoutePaths.successPath}/:transaction_id/:action",
      name: "Success",
      builder: (context, state) {
        log(state.fullPath.toString());
        return SuccessView(
          mode: state.pathParameters["action"] as String,
          data: state.extra as PayData,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.viewPersonalInfoPath,
      name: "View Personal Info",
      builder: (context, state) {
        log(state.matchedLocation.toString());
        return const PersonalInfoView();
      },
    ),
    GoRoute(
      path: RoutePaths.addWithdrawalBankPath,
      name: "Add Withdrawal Details",
      builder: (context, state) {
        log(state.matchedLocation.toString());
        return const AddWithdrawalDetailsView();
      },
    ),
    GoRoute(
      path: RoutePaths.accountRecoveryPath,
      name: "Account Recovery",
      builder: (context, state) {
        log(state.matchedLocation.toString());
        String? type = state.extra as String?;
        return AccountRecoveryView(
          type: type,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.staffManagementPath,
      builder: (context, state) {
        return const StaffHomeView();
      },
    ),
    GoRoute(
      path: RoutePaths.addStaffPath,
      builder: (context, state) {
        return const AddStaffView();
      },
    ),
    GoRoute(
      path: RoutePaths.branchManagementPath,
      builder: (context, state) {
        return const BranchHomeView();
      },
    ),
    GoRoute(
      path: RoutePaths.addBranchPath,
      builder: (context, state) {
        return const AddBranchView();
      },
    ),
    GoRoute(
      path: "/:id${RoutePaths.pushPaymentPin}",
      builder: (context, state) {
        String id = state.pathParameters["id"] as String;
        return PushPaymentPinView(
          transactionId: id,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.walletPath,
      name: "Wallet",
      builder: (context, state) {
        return const WalletView();
      },
    ),
    GoRoute(
      path: RoutePaths.billsPath,
      name: "Bills",
      builder: (context, state) {
        return const BillsView();
      },
    ),
    ...electricityRoutes,
    ...airtimeRoutes,
    ...dataRoutes,
    ...cableRoutes,
    ...transactionDetailRoutes,
  ],
);

List<GoRoute> electricityRoutes = [
  GoRoute(
    path: RoutePaths.initiateElectricityPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return const InitiateElectricityView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewElectricityPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
      double amount = extra["amount"];
      VerifyElectricityData data = extra["verify_data"];
      return ReviewElectricityView(
        data: data,
        amount: amount,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.electricityPinPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
      double amount = extra["amount"];
      VerifyElectricityData data = extra["verify_data"];
      return ConfirmElectricityPinView(
        data: data,
        amount: amount,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.electricitySuccessPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      VendElectricityData extra = state.extra as VendElectricityData;
      return VendElectricitySuccessView(
        data: extra,
      );
    },
  ),
];

List<GoRoute> airtimeRoutes = [
  GoRoute(
    path: RoutePaths.initiateAirtimePath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return const InitiateAirtimeView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewAirtimePath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return ReviewAirtimeView(
        data: state.extra as ReviewAirtimeData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.airtimePinPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return ConfirmAirtimePinView(
        data: state.extra as ReviewAirtimeData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.airtimeSuccessPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      VendAirtimeData extra = state.extra as VendAirtimeData;
      return VendAirtimeSuccessView(
        data: extra,
      );
    },
  )
];

List<GoRoute> dataRoutes = [
  GoRoute(
    path: RoutePaths.initiateDataPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return const InitiateDataView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewDataPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return ReviewDataView(
        data: state.extra as VerifyDataData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.dataPinPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return ConfirmDataPinView(
        data: state.extra as VerifyDataData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.dataSuccessPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return VendDataSuccessView(
        data: state.extra as VendDataData,
      );
    },
  )
];

List<GoRoute> cableRoutes = [
  GoRoute(
    path: RoutePaths.initiateCablePath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return const InitiateCableView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewCablePath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return ReviewCableView(
        data: state.extra as VerifyCableData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.cablePinPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return ConfirmCablePinView(
        data: state.extra as VerifyCableData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.cableSuccessPath,
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return VendCableSuccessView(
        data: state.extra as VendCableData,
      );
    },
  )
];

List<GoRoute> transactionDetailRoutes = [
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/airtime/:id",
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return AirtimeDetailsView(detail: state.extra as AirtimeDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/power/:id",
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return PowerDetailsView(detail: state.extra as PowerDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/data/:id",
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return DataDetailsView(detail: state.extra as DataDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/tv/:id",
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return CableDetailsView(detail: state.extra as CableDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/payment/:id/:type",
    builder: (context, state) {
      log(state.matchedLocation.toString());
      return PaymentDetailsView(
        detail: state.extra as PaymentDetail,
        type: state.pathParameters["type"]!,
      );
    },
  ),
];
