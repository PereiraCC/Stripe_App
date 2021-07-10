
import 'package:meta/meta.dart';
import 'package:stripe_payment/stripe_payment.dart';

class StripeService {

  //Singleton
  StripeService._privateConstructor();
  static final StripeService _instance =  StripeService._privateConstructor();
  factory StripeService() => _instance;

  String _paymentApiUrl = 'https://api.stripe.com/v1/payment_intents';
  String _secretKey = 'sk_test_51JBnGDAeCHtZYDFdtqADQhJIbbEqyMFYypuq5WZjj4DD0jOr2oDCrIIvZxrVoW8oSY4M4EYPOvHRk0VXpG10nHsG00J2z5VKNE';

  void init() {

  }

  Future pagarConTarjetaExiste({
    @required String amount,
    @required String currency,
    @required CreditCard card,
  }) async {

  }

  Future pagarConNuevaTarjeta({
    @required String amount,
    @required String currency,
  }) async {
    
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