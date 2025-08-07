import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungerway/features/onboarding/cubit/onboarding_states.dart';
import 'package:video_player/video_player.dart';

class OnboardingCubit extends Cubit<OnboardingStates> {
  OnboardingCubit() : super(OnboardingInitialState());
  late VideoPlayerController controller;

  PageController pageController = PageController();
  int currentPage = 0;
  VideoPlayerController videoPlayerController = VideoPlayerController.asset("assets/videos/onboarding2.mp4");

  void changePage(int index) {
    currentPage = index;
    print("current page $currentPage");
    
    emit(OnboardingChangePageState());
  }
  
 

}
