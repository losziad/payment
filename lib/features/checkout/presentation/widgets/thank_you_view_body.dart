import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/custom_check_icon.dart';
import 'package:payment/features/checkout/presentation/widgets/custom_dashed_line.dart';
import 'package:payment/features/checkout/presentation/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom:  MediaQuery.sizeOf(context).height * 0.2 + 20,
            left: 20 + 10.0,
            right: 20 + 10.0,
            child: const CustomDashedLine(),
          ),
          Positioned(
            // -20 Because the radius of Circle Avatar default = 20
            left: -20.0,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            // -20 Because the radius of Circle Avatar default = 20
            right: -20.0,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
           const Positioned(
            right: 0.0,
            left: 0.0,
            top: -50.0,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}



