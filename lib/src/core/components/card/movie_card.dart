import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/assets.gen.dart';
import '../../../config/gen/colors.gen.dart';
import '../../../domain/entities/movie/movie/movie.dart';
import '../../../presentation/_widgets/tag_container.dart';
import '../../constants/imdb_image_constants.dart';
import '../../extensions/int_extensions.dart';
import '../buttons/favorite_icon_button.dart';
import '../indicator/base_indicator.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
    required this.onTap,
  });

  final Movie movie;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = movie.posterPath != null ? IMDBImageConstants.original + movie.posterPath! : null;

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            if (imageUrl == null)
              Container(
                height: 325.h,
                width: 200.w,
                color: MGColors.grey,
                alignment: const Alignment(0, -0.125),
                child: const Icon(Icons.photo, color: MGColors.dark, size: 52),
              )
            else
              CachedNetworkImage(
                height: 325.h,
                width: 200.w,
                useOldImageOnUrlChange: true,
                imageUrl: imageUrl,
                progressIndicatorBuilder: (_, __, ___) =>
                    SizedBox(height: 325.h, child: const Center(child: BaseIndicator())),
                errorWidget: (_, __, ___) => SizedBox(height: 325.h, child: const Center(child: BaseIndicator())),
                fit: BoxFit.cover,
              ),
            SizedBox(
              height: 325.h,
              width: 200.w,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: FavoriteIconButton(onPressed: () async {}),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: ColoredBox(
                          color: Colors.grey.shade200.withOpacity(0.2),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              movie.title ?? '',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 16.sp,
                                                fontFamily: Assets.fonts.apercuProMedium,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                                            child: Row(
                                              children: [
                                                Text(movie.voteAverage!.toString().substring(0, 3),
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                      fontSize: 15.sp,
                                                    )),
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                2.verticalSpace,
                                Expanded(
                                  flex: 2,
                                  child: ListView.separated(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_, index) => TagContainer(
                                      tag: movie.genreIds?.elementAt(index).getGenreFromNumber() ?? '',
                                    ),
                                    separatorBuilder: (_, index) => const SizedBox(width: 15),
                                    itemCount: movie.genreIds?.length ?? 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
