import 'package:blue_business/core/models/banks/response/bank_response.dart';
import 'package:blue_business/core/models/beneficiary/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/models/beneficiary/set/request/set_beneficiary_request.dart';
import 'package:blue_business/core/models/beneficiary/set/response/set_beneficiary_response.dart';
import 'package:blue_business/core/models/payment_link/response/payment_link_response.dart';
// import 'package:blue_business/core/models/payment_link/response/payment_link_response.dart';
import 'package:blue_business/core/models/recently_paid/response/recently_paid_response.dart';
import 'package:blue_business/core/models/transaction/initiate/request/initiate_transaction_request.dart';
import 'package:blue_business/core/models/transaction/initiate/response/initiate_transaction_response.dart';
import 'package:blue_business/core/models/transaction/pay/credit/request/credit_request.dart';
import 'package:blue_business/core/models/transaction/pay/response/pay_response.dart';
import 'package:blue_business/core/models/transaction/pay/withdraw/request/withdraw_request.dart';
import 'package:blue_business/core/models/transaction/receipt/response/paymentLink/receipt_response.dart';
import 'package:blue_business/core/models/transaction/receipt/response/transaction/receipt_response.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/models/transaction_detail/response/transaction_detail_response.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/withdrawal_account/get/response/withdrawal_account_response.dart';
import 'package:blue_business/core/models/withdrawal_account/set/request/set_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/set/response/set_payout_response.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/request/verify_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/response/verify_payout_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'transaction_service.g.dart';

@RestApi()
abstract class TransactionService {
  factory TransactionService(Dio dio) =>
      _TransactionService(dio, baseUrl: AppConstants.baseUrl);

  @GET("/transaction-histories")
  Future<TransactionResponse> getTransactions(
    @Query("page") int page,
    @Query("limit") int limit, {
    @Query("payment_mode") String? paymentMode,
    @Query("date") String? date,
    @Query("type") String? type,
    @Query("status") String? status,
  });

  @POST("/payments/initiate")
  Future<InitiateTransactionResponse> initiateTransaction(
      @Body() InitiateTransactionRequest request);

  @POST("/payments/verify")
  Future<VerifiedReceiverResponse> verifyReceiver(
    @Body() VerifiedReceiverRequest request,
  );

  @POST("/withdraw")
  Future<PayResponse> withdraw(@Body() WithdrawRequest request);

  @POST("/payments/send-fund")
  Future<PayResponse> pay(@Body() CreditRequest request);

  @GET("/payments/receipt")
  Future<ReceiptResponse> getReceipt(@Query("t_id") String transactionId);

  @GET("/{service}/details")
  Future<TransactionDetailResponse> getBillTransactionDetails({
    @Query("t_id") required String transactionId,
    @Path("service") required String service,
  });

  @GET("/transaction-histories/details")
  Future<TransactionDetailResponse> getTransactionDetails({
    @Query("t_ref") required String transactionReference,
    @Query("service") required String service,
  });

  @GET("/payment/receipt")
  Future<TransactionDetailResponse> getPaymentTransactionDetails({
    @Query("t_id") required String transactionId,
  });

  @GET("/payment-links")
  Future<PaymentLinkResponse> getPaymentLinkHistory(
    @Query("page") int page,
    @Query("limit") int limit,
    @Query("status") String status,
  );

  @GET("/payment-links/details")
  Future<PaymentLinkReceiptResponse> getPaymentLinkReceipt(
      @Query("t_ref") String transactionId);

  @GET("/beneficiaries/index")
  Future<GetBeneficiaryResponse> searchBeneficiaries(
    @Query("page") int page,
    @Query("limit") int limit,
    @Query("search") String? query,
  );

  @DELETE("/beneficiaries/{id}")
  Future deleteBeneficiary(
    @Path() int id,
  );

  @POST("/beneficiaries")
  Future<SetBeneficiaryResponse> addBeneficiary(
    @Body() SetBeneficiaryRequest request,
  );

  // @GET("/payment-link/history")
  // Future<PaymentLinkResponse> getPaymentLinkHistory(
  //   @Query("page") int page,
  //   @Query("limit") int limit,
  //   @Query("status") String status,
  // );

  @GET("/beneficiaries/recently-paid")
  Future<RecentlyPaidResponse> getRecentlyPaid();

  @GET("/settlement-accounts")
  Future<WithdrawalAccountResponse> getWithdrawalAccount();

  @GET("/banks")
  Future<BankResponse> getBanks();

  @POST("/settlement-accounts/verify")
  Future<VerifyPayoutResponse> verifyAccount(
      @Body() VerifyPayoutRequest request);

  @POST("/settlement-accounts")
  Future<SetPayoutResponse> addPayout(@Body() SetPayoutRequest request);
}
