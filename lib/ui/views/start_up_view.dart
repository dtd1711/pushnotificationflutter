import 'package:flutter/material.dart';
import 'package:push_notification/core/view_models/start_up_model.dart';
import 'package:push_notification/ui/views/base_view.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartUpModel>(
      onModelReady: (model){
        model.handleStartUpView();
      },
      builder: (context,model,child){
        return Scaffold(
          body: Center(
            child: Text(
              "Loading ...",
              style: TextStyle(
                fontSize: 16.0
              ),
            ),
          ),
        );
      },
    );
  }
}
