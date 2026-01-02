import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/app_strings.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/extensions/sized_box_extention.dart';

import 'core/config/constants/icon_path.dart';
import 'core/config/constants/image_path.dart';
import 'core/config/theme/light_theme.dart';
import 'core/config/widgets/alret_dialog.dart';
import 'core/config/widgets/app_dashboard_card.dart';
import 'core/config/widgets/app_elevated_button.dart';
import 'core/config/widgets/app_empty_state.dart';
import 'core/config/widgets/app_floating_button.dart';
import 'core/config/widgets/app_icon_elevated_button.dart';
import 'core/config/widgets/app_logo.dart';
import 'core/config/widgets/app_rich_text.dart';
import 'core/config/widgets/app_snack_bar.dart';
import 'core/config/widgets/app_status_badge.dart';
import 'core/config/widgets/app_task_list_tile.dart';
import 'core/config/widgets/app_text_field.dart';
import 'core/config/widgets/custom_app_bar.dart';
import 'core/config/widgets/custom_bottom_nav.dart';
import 'core/config/widgets/custom_info_card.dart';
import 'core/config/widgets/custom_text_button.dart';
import 'core/config/widgets/on_boarding_content.dart';
import 'core/config/widgets/profile_option_Item.dart';

void main() {
  runApp(taskora());
}

class taskora extends StatelessWidget {
  const taskora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         body: Center(
           child: Column(
             crossAxisAlignment: .center,
             children: [
               100.height,
               AppElevatedButton(text: AppStrings.login, onPressed: () {  },),
               AppIconElevatedButton(text: AppStrings.next, onPressed: (){}, icon: IconPath.arrow,),
             AppTextField(hintText: '', prefixIcon: IconPath.email,),
               AppLogo(),
               AppRichText(textSpan1: AppStrings.doYouHaveAcc, textSpan2: AppStrings.doLogin,),
               CustomTextButton(text: AppStrings.doYouForgetPassword,),
                OnboardingContent(onBoardingImg: ImagePath.onBoadringImage,
                 onBoardingText1: AppStrings.onboardingText1,
                 onBoardingText2: AppStrings.onboardingText2, onPressed: () {  }, iconExist: false, ),
             //  AppCustomCard(height: null, width: null, color: null, child: null,),
             AppDashboardCard(text: AppStrings.successSnackbar, color: ColorManager.secondary,),
              AppStatusBadge(title: AppStrings.projects, value: '12', icon: IconPath.checkmark,),
              AppTaskListTile(title: AppStrings.designUI, subTitle: AppStrings.tradeApp, color: ColorManager.priority, trialingText: AppStrings.underImplementation,),
               AppFloatingButton(),
              // AppContainer(height: null, width: null, color: null, child: null,),
               ProfileOptionItem(color: ColorManager.pruple, icon: IconPath.clock, text1: '\$8,500', text2: AppStrings.totalEarnings,),
                CustomAppBar(image: ImagePath.profilePic, userName: 'هديل', icon1: IconPath.notification, icon2: IconPath.listsProfile,),
               AppBottomNavBar(),
              AppAlertDialog(),
              CustomInfoCard(text1: AppStrings.createTask, text2: AppStrings.cancel,),
               AppSnackBar(message: AppStrings.CongratesResetSuccessfully,),
               AppEmptyState(image: ImagePath.noDataImage, text1: AppStrings.noDataYet, text2: AppStrings.willAppearDataWhenAdd, textButton: AppStrings.addNow,)


             ],
           ),
         ),
       ),
      );
  }}

