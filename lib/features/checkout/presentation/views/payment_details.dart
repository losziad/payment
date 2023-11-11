import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment/features/checkout/presentation/widgets/app_button.dart';
import 'package:payment/features/checkout/presentation/widgets/build_app_bar.dart';
import 'package:payment/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_item.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_list_view.dart';

class PaymentDetails extends StatefulWidget {
   PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: CustomScrollView(
        slivers:  [
          SliverToBoxAdapter(
            child: PaymentMethodsListView(),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              autovalidateMode: autovalidateMode,
              formKey: formKey,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom:12.0),
                child: AppButton(
                  titleButton: 'Pay',
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ThankYouView(),));
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {

                      });
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
**/
