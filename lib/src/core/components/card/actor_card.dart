import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';
import '../../../domain/entities/cast/movie_cast/movie_cast.dart';
import '../../constants/imdb_image_constants.dart';

class ActorCard extends StatelessWidget {
  const ActorCard({
    super.key,
    required this.movieCast,
  });

  final MovieCast movieCast;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: MGColors.grey,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              bottomLeft: Radius.circular(12.r),
            ),
            child: movieCast.profilePath != null
                ? CachedNetworkImage(
                    imageUrl: IMDBImageConstants.original + movieCast.profilePath!,
                  )
                : null,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    movieCast.name!,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18),
                  ),
                  5.verticalSpace,
                  AutoSizeText(movieCast.character!,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 14, color: MGColors.grey.shade100)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
