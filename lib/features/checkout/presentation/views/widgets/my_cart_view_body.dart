import 'package:checkout_payment/core/widgets/custom_btn.dart';
import 'package:checkout_payment/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:checkout_payment/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_bottom_sheet.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Image.asset("assets/images/cart.png"),
              ),
            ),
            SizedBox(height: 30),
            OrderInfoItem(title: "Order Subtotal", value: r"42.97$"),
            OrderInfoItem(title: "Discount", value: r"0$"),
            OrderInfoItem(title: "shipping", value: r"8$"),
            SizedBox(height: 20),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 20),
            TotalPrice(title: "Total", value: r"50.97$"),
            SizedBox(height: 20),
            CustomBtn(
              title: "Complete Payment",
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) =>
                      BlocProvider(
                        create: (context) => PaymentCubit(CheckoutRepoImpl()),
                        child: PaymentMethodsBottomSheet(),
                      ),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
