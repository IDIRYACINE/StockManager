import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';

class SettingCard extends StatelessWidget {
  const SettingCard(
      {Key? key,
      required this.rowData,
      required this.sectionTitle,
      this.displayDivider = false,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.cardPaddings = Measures.medium,
      this.width,
      this.height,
      this.sectionTitleSpace = Measures.large})
      : super(key: key);

  final List<SettingRowData> rowData;
  final String sectionTitle;
  final bool displayDivider;
  final double? width;
  final double? height;
  final double cardPaddings;
  final double sectionTitleSpace;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Measures.settingsCardsWidth,
      height: height,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(cardPaddings),
          child: Column(crossAxisAlignment: crossAxisAlignment, children: [
            Text(sectionTitle,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.grey)),
            SizedBox(
              height: sectionTitleSpace,
            ),
            for (SettingRowData rowData in rowData)
              SettingsRowStateless(
                rowData: rowData,
              ),
          ]),
        ),
      ),
    );
  }
}

class SettingRowData {
  final VoidCallback? onClick;
  final String? title;
  final String? subtitle;

  SettingRowData({this.onClick, this.title, this.subtitle});
}

class SettingsRowStateless extends StatelessWidget {
  const SettingsRowStateless({
    Key? key,
    required this.rowData,
    this.width = double.infinity,
  }) : super(key: key);

  final SettingRowData rowData;
  final double width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: width,
      child: InkWell(
        borderRadius: BorderRadius.circular(Measures.medium),
        onTap: rowData.onClick,
        child: Padding(
          padding: const EdgeInsets.all(Measures.small),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (rowData.title != null)
                Text(
                  rowData.title!,
                  style: theme.textTheme.bodyLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              if (rowData.subtitle != null)
                Text(rowData.subtitle!,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
