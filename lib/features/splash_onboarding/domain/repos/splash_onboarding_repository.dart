import 'package:dartz/dartz.dart';
abstract class SplashOnboardingRepository {
  Future<bool> checkOnboardingStatus();
  Future<Unit> completeOnboarding();
}