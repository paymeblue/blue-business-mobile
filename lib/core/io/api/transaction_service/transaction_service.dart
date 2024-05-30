import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/banks/response/bank_response.dart';
import 'package:blue_business/core/models/beneficiary/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/models/beneficiary/set/request/set_beneficiary_request.dart';
import 'package:blue_business/core/models/beneficiary/set/response/set_beneficiary_response.dart';
import 'package:blue_business/core/models/payment_link/response/payment_link_response.dart';
import 'package:blue_business/core/models/push_response/push_pay_response.dart';
import 'package:blue_business/core/models/recently_paid/response/recently_paid_response.dart';
import 'package:blue_business/core/models/reset/pin/request/reset_pin_request.dart';
import 'package:blue_business/core/models/security_question/create/request/create_question_request.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/models/security_question/send/request/send_question_request.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/models/transaction/initiate/request/initiate_transaction_request.dart';
import 'package:blue_business/core/models/transaction/initiate/response/initiate_transaction_response.dart';
import 'package:blue_business/core/models/transaction/pay/credit/request/credit_request.dart';
import 'package:blue_business/core/models/transaction/pay/response/pay_response.dart';
import 'package:blue_business/core/models/transaction/pay/withdraw/request/withdraw_request.dart';
import 'package:blue_business/core/models/transaction/receipt/response/transaction/receipt_response.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/models/transaction_detail/response/transaction_detail_response.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/withdrawal_account/set/request/set_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/set/response/set_payout_response.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/request/verify_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/response/verify_payout_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'transaction_service.g.dart';

@RestApi(
    baseUrl: "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api")
abstract class TransactionService {
  factory TransactionService() {
    return _TransactionService(DioConfig.dio());
  }

  @GET('/transactions')
  Future<TransactionResponse> getTransactions(
    @Query("page") int page,
    @Query("limit") int limit, {
    @Query("payment_mode") String? paymentMode,
    @Query("date") String? date,
    @Query("type") String? type,
  });

  @GET("/transaction-histories/details")
  Future<TransactionDetailResponse> getTransactionDetails({
    @Query("t_ref") required String transactionReference,
    @Query("service") required String service,
  });

  @GET("/beneficiaries/index")
  Future<GetBeneficiaryResponse> searchBeneficiaries(
    @Query("page") int page,
    @Query("limit") int limit,
    @Query("search") String? query,
  );

  @DELETE("/beneficiaries/{id}")
  Future deleteBeneficiary(
    @Path() String id,
  );

  @POST("/beneficiaries")
  Future<SetBeneficiaryResponse> addBeneficiary(
    @Body() SetBeneficiaryRequest request,
  );

  @GET("/payment-links")
  Future<PaymentLinkResponse> getPaymentLinkHistory(
    @Query("page") int page,
    @Query("limit") int limit,
    @Query("status") String status,
  );

  @GET("/beneficiaries/recently-paid")
  Future<RecentlyPaidResponse> getRecentlyPaid();

  @POST("/transactions/initiate")
  Future<InitiateTransactionResponse> initiateTransaction(
      @Body() InitiateTransactionRequest request);

  @PATCH("/transactions/verify")
  Future<VerifiedReceiverResponse> verifyReceiver(
    @Body() VerifiedReceiverRequest request,
  );

  @POST("/withdraw")
  Future<PayResponse> withdraw(@Body() WithdrawRequest request);

  @PATCH("/transactions/send-fund")
  Future<PayResponse> pay(@Body() CreditRequest request);

  @GET("/transactions/receipt")
  Future<ReceiptResponse> getReceipt(@Query("t_id") String transactionId);

  @GET("/banks")
  Future<BankResponse> getBanks();

  @POST("/withdrawal-accounts/verify")
  Future<VerifyPayoutResponse> verifyAccount(
      @Body() VerifyPayoutRequest request);

  @POST("/withdrawal-accounts")
  Future<SetPayoutResponse> addPayout(@Body() SetPayoutRequest request);

  @GET("/security-info")
  Future<GetQuestionResponse> getSecurityQuestion(@Query("phone") String phone);

  @PATCH("/security-question/answer")
  Future<SendQuestionResponse> sendSecurityAnswer(
      @Body() SendQuestionRequest request);

  @POST("/security-info")
  Future<SendQuestionResponse> createSecurityQuestion(
      @Body() CreateQuestionRequest request);

  @PATCH("/pins/reset")
  Future<SendQuestionResponse> resetPin(@Body() ResetPinRequest request);

  @POST("/transactions/accept-payment")
  Future<PushPayResponse> acceptPayment(@Body() CreditRequest request);
}
