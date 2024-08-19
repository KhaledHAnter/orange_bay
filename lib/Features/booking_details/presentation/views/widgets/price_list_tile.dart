import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/booking_details/presentation/manager/prices_details_cubit/prices_details_cubit.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/count_button.dart';

class PriceListTile extends StatelessWidget {
  const PriceListTile({
    super.key,
    required this.cubit,
    required this.title,
    required this.price,
    required this.count,
    this.onTap1,
    this.onTap2,
    this.isActive = true,
  });

  final PricesDetailsCubit cubit;

  final String title;
  final int price, count;
  final void Function()? onTap1, onTap2;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: Styles.regular16.copyWith(
                        color: const Color(0xff3c3c3c),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Gap(6),
                Text(
                  "$price EGP",
                  style: Styles.regular16.copyWith(
                    color: const Color(0xff585757),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(8),
        SizedBox(
          child: Row(
            children: <Widget>[
              CountButton(
                icon: Icons.remove,
                onTap: onTap1,
                isActive: isActive,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  count.toString(),
                  style: Styles.meduim18,
                ),
              ),
              CountButton(
                icon: Icons.add,
                onTap: onTap2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
