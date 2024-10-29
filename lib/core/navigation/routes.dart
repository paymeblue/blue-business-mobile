import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/models/bills/airtime/vend/data/vend_airtime_data.dart';
import 'package:blue_business/core/models/bills/cable/vend/data/vend_cable_data.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/models/bills/data/vend/data/vend_data_data.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:blue_business/core/models/bills/electricity/vend/data/vend_electricity_data.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
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
import 'package:blue_business/core/utils/constants.dart';
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
import 'package:blue_business/modules/branch_insights/presentation/view.dart';
import 'package:blue_business/modules/branch_management_pages/add/presentation/view.dart';
import 'package:blue_business/modules/branch_management_pages/home/presentation/view.dart';
// import 'package:blue_business/modules/dashboard_pages/loans/presentation/view.dart';
import 'package:blue_business/modules/push_payment_pin/presentation/view.dart';
import 'package:blue_business/modules/signup_pages/business_details/presentation/view.dart';
import 'package:blue_business/modules/signup_pages/business_kyc/presentation/view.dart';
import 'package:blue_business/modules/signup_pages/progress_page/presentation/view.dart';
import 'package:blue_business/modules/signup_pages/shareholder_details/presentation/view.dart';
import 'package:blue_business/modules/staff_management_pages/add/presentation/view.dart';
import 'package:blue_business/modules/staff_management_pages/home/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/airtime_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/cable_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/data_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/payment_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_details/pages/power_details/presentation/view.dart';
import 'package:blue_business/modules/transaction_error/presentation/view.dart';
import 'package:blue_business/modules/wallet/presentation/view.dart';
import 'package:blue_business/modules/welcome/presentation/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

late StatefulNavigationShell signupChild;

GoRouter router = GoRouter(
  errorBuilder: (context, state) {
    return ErrorRouteView(
      message: state.error?.message,
      newRoute: state.matchedLocation.startsWith("/dash")
          ? RoutePaths.homePath
          : RoutePaths.loginPath,
    );
  },
  redirect: (context, state) {
    AppStateValues stateValues = locator<AppStateValues>();
    if (stateValues.currentUser == null &&
        state.matchedLocation.contains("/dash")) {
      return RoutePaths.loginPath;
    }
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
        return const WelcomeView();
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
              return const EnterRecoveryCodeView();
            },
          ),
          GoRoute(
            path: "${RoutePaths.recoverPhoneNumberPath}/:id",
            name: "Recover Account Phone Number",
            builder: (context, state) {
              return EnterNewPhoneView(
                id: int.parse(state.pathParameters["id"] as String),
              );
            },
          ),
          GoRoute(
            path: RoutePaths.phoneRecoveryOtpPath,
            name: "Verify Recovery Otp",
            builder: (context, state) {
              return VerifyRecoveryOtpView(
                data: state.extra as SendNewPhoneData,
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
              return const EnterPasswordRecoveryPhoneView();
            },
          ),
          GoRoute(
            path: "${RoutePaths.passwordRecoveryOtpPath}/:phone",
            name: "Verify Password Recovery Otp",
            builder: (context, state) {
              String phone = state.pathParameters["phone"] as String;
              return VerifyPasswordRecoveryOtpView(phone: phone);
            },
          ),
          GoRoute(
            path: "${RoutePaths.recoverPasswordPath}/:phone",
            name: "Create New Password",
            builder: (context, state) {
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
              return EnterPinRecoveryPhoneView(
                  securityQuestion: state.extra as GetQuestionData?);
            },
          ),
          GoRoute(
            path: "${RoutePaths.pinRecoveryOtpPath}/:phone",
            name: "Verify Pin Recovery Otp",
            builder: (context, state) {
              String phone = state.pathParameters["phone"] as String;
              return VerifyPinRecoveryOtpView(phone: phone);
            },
          ),
          GoRoute(
            path: "${RoutePaths.recoverPinPath}/:phone",
            name: "Create New Pin",
            builder: (context, state) {
              return ResetPinView(
                phone: state.pathParameters["phone"].toString(),
              );
            },
          ),
        ]),
    GoRoute(
      path: "/register${RoutePaths.pinPath}",
      builder: (context, state) {
        return CreatePinView(
          data: state.extra as SignupData,
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
                return const InsightsView();
              },
            ),
          ],
        ),
        // StatefulShellBranch(
        //   routes: [
        //     GoRoute(
        //       path: RoutePaths.loansPath,
        //       name: "Loans",
        //       builder: (context, state) {
        //         return const LoansView();
        //       },
        //     ),
        //   ],
        // ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.settingsPath,
              name: "Settings",
              builder: (context, state) {
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
        return const ReceiveMoneyView();
      },
    ),
    GoRoute(
      path: RoutePaths.transactionHistoryPath,
      name: "Transaction History",
      builder: (context, state) {
        return const TransactionHistoryView();
      },
    ),
    GoRoute(
      path: RoutePaths.paymentLinkPath,
      name: "Payment Link History",
      builder: (context, state) {
        return const PaymentLinkHistoryView();
      },
    ),
    GoRoute(
      path: RoutePaths.manageBeneficiaryPath,
      name: "Manage Beneficiaries",
      builder: (context, state) {
        return const ManageBeneficiariesView();
      },
    ),
    GoRoute(
      path: RoutePaths.updateKycPath,
      name: "Update KYC",
      builder: (context, state) {
        return const UpdateKycView();
      },
    ),
    GoRoute(
      path: RoutePaths.changePinPath,
      name: "Change PIN",
      builder: (context, state) {
        return const ChangePinView();
      },
    ),
    GoRoute(
      path: RoutePaths.changePasswordPath,
      name: "Change Password",
      builder: (context, state) {
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
            return InitiatePaymentView(
              isWithdrawal: state.pathParameters["action"] == "withdraw",
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/offline",
          name: "Pay Offline",
          builder: (context, state) {
            return const OfflinePaymentView();
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/blue-user",
          name: "Verify Blue Receiver",
          builder: (context, state) {
            return BluePaymentView(
              data: state.extra as InitiateTransactionData,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/qr",
          name: "Scan QR Code",
          builder: (context, state) {
            return QrPaymentView(
              data: state.extra as InitiateTransactionData,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.verifyReceiverPath}/phone",
          name: "Verify Phone Receiver",
          builder: (context, state) {
            return PhonePaymentView(
              data: state.extra as InitiateTransactionData,
            );
          },
        ),
        GoRoute(
          path: "${RoutePaths.confirmPaymentPath}/:action/:transaction_id",
          name: "Confirm Transaction",
          builder: (context, state) {
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
        return const PersonalInfoView();
      },
    ),
    GoRoute(
      path: RoutePaths.addWithdrawalBankPath,
      name: "Add Withdrawal Details",
      builder: (context, state) {
        return const AddWithdrawalDetailsView();
      },
    ),
    GoRoute(
      path: RoutePaths.accountRecoveryPath,
      name: "Account Recovery",
      builder: (context, state) {
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
        return AddStaffView(
          staff: state.extra as Staff?,
        );
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
        return AddBranchView(
          branch: state.extra as Branch?,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.branchInsightsPath,
      builder: (context, state) {
        return BranchInsightsView(
          branch: state.extra as Branch,
        );
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
    signupShellRoute,
  ],
);

List<GoRoute> electricityRoutes = [
  GoRoute(
    path: RoutePaths.initiateElectricityPath,
    builder: (context, state) {
      return const InitiateElectricityView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewElectricityPath,
    builder: (context, state) {
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
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    builder: (context, state) {
      return const InitiateAirtimeView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewAirtimePath,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    builder: (context, state) {
      return ReviewAirtimeView(
        data: state.extra as ReviewAirtimeData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.airtimePinPath,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    builder: (context, state) {
      return ConfirmAirtimePinView(
        data: state.extra as ReviewAirtimeData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.airtimeSuccessPath,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    builder: (context, state) {
      VendAirtimeData extra = state.extra as VendAirtimeData;
      return VendAirtimeSuccessView(
        data: extra,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.transactionErrorPath,
    builder: (context, state) {
      return TransactionErrorView(error: state.extra as String);
    },
  ),
];

ShellRoute signupShellRoute = ShellRoute(
  navigatorKey: locator<NavigationService>().shellKey,
  builder: (context, state, child) {
    return SignupShellView(
      child: child,
    );
  },
  routes: [
    GoRoute(
      path: RoutePaths.addAccountPhonePath,
      name: "Add Account Phone Number",
      builder: (context, state) {
        return const EnterAccountPhoneView();
      },
    ),
    GoRoute(
      path: RoutePaths.registerProgressPath,
      name: "Signup Progress",
      builder: (context, state) {
        return SignupProgressView(
          data: state.extra as SignupData,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.registerShareholdersPath,
      name: "Shareholder Details",
      builder: (context, state) {
        return ShareholderDetailsView(
          data: state.extra as SignupData,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.registerBusinessDetailsPath,
      name: "Signup Business Details",
      builder: (context, state) {
        return SignupBusinessDetailsView(
          data: state.extra as SignupData,
        );
      },
    ),
    GoRoute(
      path: RoutePaths.addShareholdersKycPath,
      name: "Signup Shareholder Kyc",
      builder: (context, state) {
        Shareholders? shareholder;
        SignupData data =
            (state.extra as Map<String, dynamic>)["data"] as SignupData;
        if ((state.extra as Map<String, dynamic>)["shareholder"] != null) {
          shareholder = (state.extra as Map<String, dynamic>)["shareholder"]
              as Shareholders;
        }
        return SignupBusinessKycView(
          shareholder: shareholder,
          data: data,
        );
      },
    ),
    GoRoute(
      path: "${RoutePaths.registerOtpPath}/:phone",
      name: "Verify Registration Otp",
      builder: (context, state) {
        String phone = state.pathParameters["phone"] as String;
        return VerifyRegistrationOtpView(
          phone: phone,
        );
      },
    ),
  ],
);

List<GoRoute> dataRoutes = [
  GoRoute(
    path: RoutePaths.initiateDataPath,
    builder: (context, state) {
      return const InitiateDataView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewDataPath,
    builder: (context, state) {
      return ReviewDataView(
        data: state.extra as VerifyDataData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.dataPinPath,
    builder: (context, state) {
      return ConfirmDataPinView(
        data: state.extra as VerifyDataData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.dataSuccessPath,
    builder: (context, state) {
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
      return const InitiateCableView();
    },
  ),
  GoRoute(
    path: RoutePaths.reviewCablePath,
    builder: (context, state) {
      return ReviewCableView(
        data: state.extra as VerifyCableData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.cablePinPath,
    builder: (context, state) {
      return ConfirmCablePinView(
        data: state.extra as VerifyCableData,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.cableSuccessPath,
    builder: (context, state) {
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
      return AirtimeDetailsView(detail: state.extra as AirtimeDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/power/:id",
    builder: (context, state) {
      return PowerDetailsView(detail: state.extra as PowerDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/data/:id",
    builder: (context, state) {
      return DataDetailsView(detail: state.extra as DataDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/tv/:id",
    builder: (context, state) {
      return CableDetailsView(detail: state.extra as CableDetails);
    },
  ),
  GoRoute(
    path: "${RoutePaths.transactionHistoryPath}/payment/:id/:type",
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    builder: (context, state) {
      return PaymentDetailsView(
        detail: state.extra as PaymentDetail,
        type: state.pathParameters["type"]!,
      );
    },
  ),
];
