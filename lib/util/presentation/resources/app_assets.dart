import 'package:kongdoc/util/chart/app_helper.dart';

class AppAssets {
  static String getChartIcon(ChartType type) {
    switch (type) {
      case ChartType.line:
        return 'assets/chart/icons/ic_line_chart.svg';
      case ChartType.bar:
        return 'assets/chart/icons/ic_bar_chart.svg';
      case ChartType.pie:
        return 'assets/chart/icons/ic_pie_chart.svg';
      case ChartType.scatter:
        return 'assets/chart/icons/ic_scatter_chart.svg';
      case ChartType.radar:
        return 'assets/chart/icons/ic_radar_chart.svg';
    }
  }

  static const flChartLogoIcon = 'assets/chart/icons/fl_chart_logo_icon.png';
  static const flChartLogoText = 'assets/chart/icons/fl_chart_logo_text.svg';
}
