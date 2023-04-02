import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gen/assets.gen.dart';
import '../../config/gen/colors.gen.dart';
import '../../core/init/language/locale_keys.g.dart';
import '../_widgets/home/home_carousel_bloc_widget.dart';
import '../bloc/popular_movies/popular_movies_bloc.dart';

@RoutePage()
class HomeView extends HookWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<PopularMoviesBloc>().add(const FetchPopularMovies());

      return null;
    }, []);

    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.home_popular.tr(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: Assets.fonts.apercuProBold,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            LocaleKeys.home_view_all.tr(),
                            style: TextStyle(
                              color: MGColors.grey,
                              fontFamily: Assets.fonts.apercuProBold,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const HomeCarouselBlocWidget(),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.home_popular.tr(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: Assets.fonts.apercuProBold,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            LocaleKeys.home_view_all.tr(),
                            style: TextStyle(
                              color: MGColors.grey,
                              fontFamily: Assets.fonts.apercuProBold,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const HomeCarouselBlocWidget(),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
