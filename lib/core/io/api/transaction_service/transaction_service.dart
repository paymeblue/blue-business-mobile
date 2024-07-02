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
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'transaction_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class TransactionService {
  factory TransactionService(Dio dio) = _TransactionService;

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

  @PATCH("/payments/verify")
  Future<VerifiedReceiverResponse> verifyReceiver(
    @Body() VerifiedReceiverRequest request,
  );

  @POST("/withdraws")
  Future<PayResponse> withdraw(@Body() WithdrawRequest request);

  @PATCH("/payments/verify")
  Future<PayResponse> pay(@Body() CreditRequest request);

  @GET("/payments/receipt")
  Future<ReceiptResponse> getReceipt(@Query("t_id") String transactionId);

  @GET("/{service}/details")
  Future<TransactionDetailResponse> getBillTransactionDetails({
    @Query("t_id") required String transactionId,
    @Path("service") required String service,
  });

  @GET("/payment/receipt")
  Future<TransactionDetailResponse> getpaymentTransactionDetails({
    @Query("t_id") required String transactionId,
  });
}
