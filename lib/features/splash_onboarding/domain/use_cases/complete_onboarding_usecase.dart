import 'package:dartz/dartz.dart';
import 'package:taskora/features/splash_onboarding/domain/repos/splash_onboarding_repository.dart';

class CompleteOnboardingUsecase {
  final SplashOnboardingRepository repository;

  CompleteOnboardingUsecase({required this.repository});

  Future<Unit> call(){
    return repository.completeOnboarding();
  }
}