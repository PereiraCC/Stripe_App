import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:stripe_app/data/tarjetas.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagar'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add), 
            onPressed: () {}
          )
        ],
      ),
      body: Stack(  
        children: [

          Positioned(
            top: 200,
            width: size.width,
            height: size.height,
            child: PageView.builder(
              controller: PageController(  
                viewportFraction: 0.9
              ),
              physics: BouncingScrollPhysics(),
              itemCount: tarjetas.length,
              itemBuilder: ( _ , i) {
                
                final tarjeta = tarjetas[i];

                return CreditCardWidget(
                  cardNumber: tarjeta.cardNumberHidden, 
                  expiryDate: tarjeta.expiracyDate, 
                  cardHolderName: tarjeta.cardHolderName, 
                  cvvCode: tarjeta.cvv, 
                  showBackView: false
                );

              }
            ),
          ),


        ],
      )
   );
  }
}