import 'package:flutter/material.dart';

import 'size_constant.dart';

class GapConstant {
  /// Constant gap widths
  static const w2 = SizedBox(width: SizeConstant.p2);
  static const w4 = SizedBox(width: SizeConstant.p4);
  static const w8 = SizedBox(width: SizeConstant.p8);
  static const w12 = SizedBox(width: SizeConstant.p12);
  static const w16 = SizedBox(width: SizeConstant.p16);
  static const w20 = SizedBox(width: SizeConstant.p20);
  static const w24 = SizedBox(width: SizeConstant.p24);
  static const w28 = SizedBox(width: SizeConstant.p28);
  static const w32 = SizedBox(width: SizeConstant.p32);
  static const w36 = SizedBox(width: SizeConstant.p36);
  static const w40 = SizedBox(width: SizeConstant.p40);
  static const w48 = SizedBox(width: SizeConstant.p48);
  static const w56 = SizedBox(width: SizeConstant.p56);
  static const w64 = SizedBox(width: SizeConstant.p64);
  static const w72 = SizedBox(width: SizeConstant.p72);
  static const w80 = SizedBox(width: SizeConstant.p80);

  /// Constant gap heights
  static const h2 = SizedBox(height: SizeConstant.p2);
  static const h4 = SizedBox(height: SizeConstant.p4);
  static const h8 = SizedBox(height: SizeConstant.p8);
  static const h12 = SizedBox(height: SizeConstant.p12);
  static const h16 = SizedBox(height: SizeConstant.p16);
  static const h20 = SizedBox(height: SizeConstant.p20);
  static const h24 = SizedBox(height: SizeConstant.p24);
  static const h28 = SizedBox(height: SizeConstant.p28);
  static const h32 = SizedBox(height: SizeConstant.p32);
  static const h36 = SizedBox(height: SizeConstant.p36);
  static const h40 = SizedBox(height: SizeConstant.p40);
  static const h48 = SizedBox(height: SizeConstant.p48);
  static const h56 = SizedBox(height: SizeConstant.p56);
  static const h64 = SizedBox(height: SizeConstant.p64);
  static const h72 = SizedBox(height: SizeConstant.p72);
  static const h80 = SizedBox(height: SizeConstant.p80);
  static const h96 = SizedBox(height: SizeConstant.p96);

  static SizedBox size({double? h, double? w}) => SizedBox(
        height: h,
        width: w,
      );
}

class GapSliver {
  /// Constant gap widths
  static const w2 = SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p2));
  static const w4 = SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p4));
  static const w8 = SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p8));
  static const w12 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p12));
  static const w16 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p16));
  static const w20 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p20));
  static const w24 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p24));
  static const w28 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p28));
  static const w32 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p32));
  static const w36 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p36));
  static const w40 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p40));
  static const w48 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p48));
  static const w56 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p56));
  static const w64 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p64));
  static const w72 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p72));
  static const w80 =
      SliverToBoxAdapter(child: SizedBox(width: SizeConstant.p80));

  /// Constant gap heights
  static const h2 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p2));
  static const h4 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p4));
  static const h8 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p8));
  static const h12 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p12));
  static const h16 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p16));
  static const h20 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p20));
  static const h24 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p24));
  static const h28 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p28));
  static const h32 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p32));
  static const h36 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p36));
  static const h40 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p40));
  static const h48 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p48));
  static const h56 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p56));
  static const h64 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p64));
  static const h72 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p72));
  static const h80 =
      SliverToBoxAdapter(child: SizedBox(height: SizeConstant.p80));

  static SliverToBoxAdapter size({double? h, double? w}) => SliverToBoxAdapter(
        child: SizedBox(
          height: h,
          width: w,
        ),
      );
}
