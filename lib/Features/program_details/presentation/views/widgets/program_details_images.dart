import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Core/widgets/custom_container.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/constants.dart';

class ProgramDetailsImages extends StatelessWidget {
  const ProgramDetailsImages({
    super.key,
    required this.place,
  });

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 380 / 340,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              place.images[0],
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              const Gap(15),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: const CustomContainer(
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  const Spacer(),
                  const CustomContainer(
                    child: Icon(FontAwesomeIcons.heart),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: kBoederRadius,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    place.images.length,
                    (index) {
                      double width = MediaQuery.sizeOf(context).width * 0.165;
                      if (index == place.images.length - 1) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          width: width,
                          height: width,
                          decoration: const BoxDecoration(
                            color: Color(0xff0F4966),
                            borderRadius: kBoederRadius,
                          ),
                          child: const Center(
                              child: Text(
                            "+12",
                            style: Styles.semiBold20,
                          )),
                        );
                      } else {
                        return Container(
                          width: width,
                          height: width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                place.images[index + 1],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
