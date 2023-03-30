import 'package:easy_localization/easy_localization.dart';
import 'package:field_companion/color-palette.dart';
import 'package:field_companion/common_widgets/section.dart';
import 'package:field_companion/common_widgets/section_item.dart';
import 'package:field_companion/common_widgets/section_item_styles.dart';
import 'package:field_companion/common_widgets/title_bar.dart';
import 'package:field_companion/features/app_settings/presentation/providers/device_id_provider.dart';
import 'package:field_companion/features/app_settings/presentation/providers/duration_step_provider.dart';
import 'package:field_companion/features/app_settings/presentation/providers/monthly_reminder_provider.dart';
import 'package:field_companion/features/app_settings/presentation/providers/user_language_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monthlyReminderValue = ref.watch(monthlyReminderProvider);
    final deviceId = ref.watch(deviceIdProvider);
    final userLanguage = ref.watch(userLanguageProvider);
    final durationStep = ref.watch(durationStepProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleBar(
            title: 'settings.title'.tr(),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Section(
                  title: 'settings.general'.tr(),
                  backgroundColor: ColorPalette.grey2Opacity08,
                  dividerColor: ColorPalette.grey2Opacity20,
                  children: [
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.language'.tr(),
                          style: SectionItemStyles.whiteKey,
                        ),
                        Text(
                          userLanguage,
                          style: SectionItemStyles.value,
                        ),
                      ],
                    ),
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.yourId'.tr(),
                          style: SectionItemStyles.whiteKey,
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            deviceId,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: SectionItemStyles.value,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Section(
                  title: 'settings.report'.tr(),
                  backgroundColor: ColorPalette.grey2Opacity08,
                  dividerColor: ColorPalette.grey2Opacity20,
                  children: [
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.changeDurationStep'.tr(),
                          style: SectionItemStyles.whiteKey,
                        ),
                        Text(
                          "$durationStep min",
                          style: SectionItemStyles.value,
                        ),
                      ],
                    ),
                    SectionItem(
                      onTap: () {},
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      children: [
                        Text(
                          'settings.monthlyReminder'.tr(),
                          style: SectionItemStyles.whiteKey,
                        ),
                        CupertinoSwitch(
                          value: monthlyReminderValue,
                          onChanged: (bool newValue) {
                            ref
                                .read(monthlyReminderProvider.notifier)
                                .set(newValue);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Section(
                  title: 'settings.data'.tr(),
                  backgroundColor: ColorPalette.grey2Opacity08,
                  dividerColor: ColorPalette.grey2Opacity20,
                  children: [
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.actions.exportBackup'.tr(),
                          style: SectionItemStyles.blueKey,
                        ),
                        const Icon(
                          color: ColorPalette.blue,
                          FeatherIcons.upload,
                          size: 20,
                        ),
                      ],
                    ),
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.actions.importBackup'.tr(),
                          style: SectionItemStyles.blueKey,
                        ),
                        const Icon(
                          color: ColorPalette.blue,
                          FeatherIcons.download,
                          size: 20,
                        ),
                      ],
                    ),
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.actions.resetApp'.tr(),
                          style: SectionItemStyles.redKey,
                        ),
                        const Icon(
                          color: ColorPalette.red,
                          FeatherIcons.trash,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Section(
                  title: 'settings.app'.tr(),
                  backgroundColor: ColorPalette.grey2Opacity08,
                  dividerColor: ColorPalette.grey2Opacity20,
                  children: [
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.actions.bugReport'.tr(),
                          style: SectionItemStyles.blueKey,
                        ),
                        const Icon(
                          color: ColorPalette.blue,
                          FeatherIcons.messageSquare,
                          size: 20,
                        ),
                      ],
                    ),
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.actions.territoryOffline'.tr(),
                          style: SectionItemStyles.blueKey,
                        ),
                        const Icon(
                          color: ColorPalette.blue,
                          FeatherIcons.externalLink,
                          size: 20,
                        )
                      ],
                    ),
                    SectionItem(
                      onTap: () {},
                      children: [
                        Text(
                          'settings.actions.about'.tr(),
                          style: SectionItemStyles.blueKey,
                        ),
                        const Icon(
                          color: ColorPalette.blue,
                          FeatherIcons.info,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
