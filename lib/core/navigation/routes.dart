import 'dart:developer';

import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/navigation/screens.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/modules/staff_management_pages/add/presentation/view.dart';
import 'package:blue_business/modules/staff_management_pages/home/presentation/view.dart';
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
                  securityQuestion: state.extra as SecurityQuestion);
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
              path: RoutePaths.insightsPAth,
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
              path: RoutePaths.messagePath,
              name: "Message",
              builder: (context, state) {
                log(state.fullPath.toString());
                return const MessageHomeView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.billsPath,
              name: "Bills",
              builder: (context, state) {
                log(state.fullPath.toString());
                return const BillsView();
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
      path: RoutePaths.startConversationPath,
      name: "Start Conversation",
      builder: (context, state) {
        log(state.matchedLocation.toString());
        return const StartConversationView();
      },
    ),
    GoRoute(
      path: RoutePaths.chatDetailsPath,
      name: "Chat",
      builder: (context, state) {
        log(state.matchedLocation.toString());
        Map extra = state.extra! as Map<String, dynamic>;
        return ChatDetailView(
          recipient: extra["peer"],
          unreadCount: extra["unread"],
        );
      },
    ),
    GoRoute(
      path: RoutePaths.chatQrPath,
      name: "Chat Qr",
      builder: (context, state) {
        log(state.matchedLocation.toString());
        return const QrChatView();
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
      path: "/:id${RoutePaths.pushPaymentPin}",
      builder: (context, state) {
        String id = state.pathParameters["id"] as String;
        return PushPaymentPinView(
          transactionId: id,
        );
      },
    ),
  ],
);
