import 'package:blue_business/core/models/banks/response/bank_response.dart';
import 'package:blue_business/core/models/beneficiary/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/models/beneficiary/set/request/set_beneficiary_request.dart';
import 'package:blue_business/core/models/beneficiary/set/response/set_beneficiary_response.dart';
import 'package:blue_business/core/models/payment_link/response/payment_link_response.dart';
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
import 'package:blue_business/core/models/transaction/receipt/response/paymentLink/receipt_response.dart';
import 'package:blue_business/core/models/transaction/receipt/response/transaction/receipt_response.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/withdrawal_account/set/request/set_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/set/response/set_payout_response.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/request/verify_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/response/verify_payout_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'transaction_service.g.dart';

@RestApi(baseUrl: "https://blue-api-backend.herokuapp.com/api")
abstract class TransactionService {
  factory TransactionService(Dio dio) = _TransactionService;

  @GET('/transactions')
  Future<TransactionResponse> getTransactions(
    @Query("page") int page,
    @Query("limit") int limit, {
    @Query("payment_mode") String? paymentMode,
    @Query("date") String? date,
    @Query("type") String? type,
  });

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

  @GET("/payment-link/history")
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

  @POST("/transactions/{id}/verify")
  Future<VerifiedReceiverResponse> verifyReceiver(
    @Path("id") int id,
    @Body() VerifiedReceiverRequest request,
  );

  @POST("/withdraws")
  Future<PayResponse> withdraw(@Body() WithdrawRequest request);

  @PATCH("/transactions/credit")
  Future<PayResponse> pay(@Body() CreditRequest request);

  @GET("/transactions/receipt")
  Future<ReceiptResponse> getReceipt(
      @Query("transaction_id") String transactionId);

  @GET("/payment-link/receipt")
  Future<PaymentLinkReceiptResponse> getPaymentLinkReceipt(
      @Query("transaction_id") String transactionId);

  @GET("/banks")
  Future<BankResponse> getBanks();

  @POST("/accounts/verify")
  Future<VerifyPayoutResponse> verifyAccount(
      @Body() VerifyPayoutRequest request);

  @POST("/accounts")
  Future<SetPayoutResponse> addPayout(@Body() SetPayoutRequest request);

  @GET("/security-question")
  Future<GetQuestionResponse> getSecurityQuestion(@Query("phone") String phone);

  @PATCH("/security-question/answer")
  Future<SendQuestionResponse> sendSecurityAnswer(
      @Body() SendQuestionRequest request);

  @POST("/security-question")
  Future<SendQuestionResponse> createSecurityQuestion(
      @Body() CreateQuestionRequest request);

  @PATCH("/pins/reset")
  Future<SendQuestionResponse> resetPin(@Body() ResetPinRequest request);
}
