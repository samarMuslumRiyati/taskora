import 'package:taskora/features/splash_onboarding/domain/repos/splash_onboarding_repository.dart';

class CheckOnboardingStatusUsecase {
  final SplashOnboardingRepository repository;

  CheckOnboardingStatusUsecase({required this.repository});

  Future<bool> call(){
    return repository.checkOnboardingStatus();
  }

}