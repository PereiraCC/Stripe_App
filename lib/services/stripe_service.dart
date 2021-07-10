
import 'package:meta/meta.dart';
import 'package:stripe_payment/stripe_payment.dart';

import 'package:stripe_app/models/stripe_custom_response.dart';

class StripeService {

  //Singleton
  StripeService._privateConstructor();
  static final StripeService _instance =  StripeService._privateConstructor();
  factory StripeService() => _instance;

  String _paymentApiUrl = 'https://api.stripe.com/v1/payment_intents';
  String _secretKey     = 'sk_test_51JBnGDAeCHtZYDFdtqADQhJIbbEqyMFYypuq5WZjj4DD0jOr2oDCrIIvZxrVoW8oSY4M4EYPOvHRk0VXpG10nHsG00J2z5VKNE';
  String _apiKey        = 'pk_test_51JBnGDAeCHtZYDFdx92YSkSPQlq9q2X3LLul2oogX2sz1VnmWbMIHelApMHy7LAfPRjrJ1UmGEdn1vaLAWVprOIt00D1xt97X8';
  
  void init() {

    StripePayment.setOptions(
      StripeOptions(
        publishableKey: this._apiKey,
        androidPayMode: 'test',
        merchantId: 'test'
      )
    );
  }

  Future pagarConTarjetaExiste({
    @required String amount,
    @required String currency,
    @required CreditCard card,
  }) async {

  }

  Future<StripeCustomResponse> pagarConNuevaTarjeta({
    @required String amount,
    @required String currency,
  }) async {
    
    try {
      
      final paymentMethod = await StripePayment.paymentRequestWithCardForm(
        CardFormPaymentRequest()
      );

      //TODO: Crear el intent

      return StripeCustomResponse(ok: true);

    } catch (e) {
      return StripeCustomResponse(
        ok: false,
        msg: e.toString()
      );
    }


  }

  Future pagarApplePayGooglePay({
    @required String amount,
    @required String currency,
  }) async {
    
  }

  Future _crearPaymentIntent({
    @required String amount,
    @required String currency,
  }) async {
    
  }

  Future _realizarPago({
    @required String amount,
    @required String currency,
    @required PaymentMethod paymentMethod,
  }) async {

  }
}