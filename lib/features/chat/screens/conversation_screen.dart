import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:match_job/core/functions/translate.dart';
import 'package:match_job/core/routes/routes.dart';
import 'package:match_job/features/chat/widgets/item_chat.dart';
import 'package:match_job/shared/extentions/navigations.dart';
import '../../../shared/widgets/custom_app_bar.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(singleTitle: tr.conversations, isNotArrow: true),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
        itemBuilder: (context, index) {
          return ChatItem(
            onTap: (){
              context.pushNamed(Routes.chatScreen);
            },
            name: 'محمد احمد',
            message: 'اهلا بك محمد',
            time: '03:16 pm',
            isSender: true,
            isSeen: true,
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: 10,
      ),
    );
  }
}

