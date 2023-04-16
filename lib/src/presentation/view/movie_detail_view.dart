import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gen/assets.gen.dart';
import '../../config/gen/colors.gen.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/base_button.dart';
import '../../core/components/buttons/base_icon_button.dart';
import '../../core/components/card/actor_card.dart';
import '../../core/components/indicator/base_indicator.dart';
import '../../core/constants/imdb_image_constants.dart';
import '../../core/extensions/int_extensions.dart';
import '../_widgets/tag_container.dart';
import '../bloc/movie_credit/movie_credit_bloc.dart';
import '../bloc/movie_detail/movie_detail_bloc.dart';

@RoutePage()
class MovieDetailView extends HookWidget {
  const MovieDetailView({super.key, required this.movieID});

  final String movieID;

  @override
  Widget build(BuildContext context) {
    final isLiked = useState<bool>(false);

    useEffect(() {
      context.read<MovieDetailBloc>().add(FetchMovieDetail(movieID));
      context.read<MovieCreditBloc>().add(FetchMovieCredit(movieID));
      return () {};
    }, []);

    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is MovieDetailError) {
          return SizedBox.expand(
              child: Center(
            child: Text(state.message),
          ));
        } else if (state is MovieDetailHasData) {
          final data = state.movieDetail;
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CachedNetworkImage(
                        fit: BoxFit.fitHeight,
                        imageUrl: '${IMDBImageConstants.original}${data.backdropPath}',
                        height: 325.h,
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [
                                0.2,
                                0.4,
                                0.7,
                                0.8,
                                0.9,
                                1,
                              ],
                              colors: [
                                ...List.generate(5, (index) => Colors.transparent.withOpacity(0)),
                                MGColors.dark.withOpacity(1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.r),
                              child: BaseIconButton(
                                onPressed: router.pop,
                                icon: Assets.icons.leftArrow.svg(color: Colors.white, width: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.r),
                              child: BaseIconButton(
                                onPressed: () => isLiked.value = !isLiked.value,
                                icon: isLiked.value
                                    ? Assets.icons.filledHeart.svg(color: Colors.white, width: 20)
                                    : Assets.icons.emptyHeart.svg(color: Colors.white, width: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.originalTitle!, style: Theme.of(context).textTheme.titleMedium),
                        10.verticalSpace,
                        SizedBox(
                          width: 0.5.sw,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(data.voteAverage!.toString().substring(0, 3),
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16)),
                              const Icon(Icons.star, color: MGColors.grey, size: 15),
                              5.horizontalSpace,
                              Text('·',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900)),
                              5.horizontalSpace,
                              Text(
                                '${Duration(minutes: data.runtime!).inHours}h ${Duration(minutes: data.runtime!).inMinutes.remainder(60)} min',
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
                              ),
                              5.horizontalSpace,
                              Text('·',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900)),
                              5.horizontalSpace,
                              Text(DateFormat('yyyy').format(DateTime.parse(data.releaseDate!)),
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  SizedBox(
                    height: 30.h,
                    width: 1.sw,
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => TagContainer(
                        tag: data.genres![index].id!.getGenreFromNumber(),
                      ),
                      separatorBuilder: (_, index) => const SizedBox(width: 15),
                      itemCount: data.genres!.length,
                    ),
                  ),
                  30.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 6,
                          child: BaseButtonWithIcon(
                            title: 'Watch Trailer',
                            foregroundColor: Colors.white,
                            backgroundColor: MGColors.green,
                            iconPositionIsRight: false,
                            onPressed: () {},
                            child: const Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          child: BaseIconButton(
                            outline: true,
                            isDark: true,
                            icon: Icon(
                              Icons.download,
                              size: 24,
                              color: MGColors.grey.shade50,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: BaseIconButton(
                            outline: true,
                            isDark: true,
                            icon: Icon(
                              Icons.share_outlined,
                              size: 24,
                              color: MGColors.grey.shade50,
                            ),
                            onPressed: () {},
                          ),
                        ),

                        //* bloc builder
                      ],
                    ),
                  ),
                  25.verticalSpace,
                  BlocBuilder<MovieCreditBloc, MovieCreditState>(
                    builder: (context, state) {
                      if (state is MovieCreditHasData) {
                        return SizedBox(
                          height: 90.h,
                          width: 1.sw,
                          child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) => ActorCard(
                              cast: state.movieCredit.cast![index],
                            ),
                            separatorBuilder: (_, index) => SizedBox(width: 30.w),
                            itemCount: state.movieCredit.cast!.length,
                          ),
                        );
                      }
                      return const Text('data');
                    },
                  ),
                  15.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: AutoSizeText(
                      data.overview! + data.overview! + data.overview!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return SizedBox(
            height: 325.h,
            child: const Center(
              child: BaseIndicator(),
            ),
          );
        }
      },
    );
  }
}
