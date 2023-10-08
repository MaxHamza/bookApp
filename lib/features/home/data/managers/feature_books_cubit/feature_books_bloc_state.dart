import '../../models/Items.dart';

abstract class FeatureBooksBlocState {
  const FeatureBooksBlocState();
 }
class FeatureBooksBlocInitial extends FeatureBooksBlocState {}
class FeatureBooksLoadingState extends FeatureBooksBlocState {}
class FeatureBooksFailureState extends FeatureBooksBlocState {
  const FeatureBooksFailureState(this.errMessage);
  final String errMessage;
}
class FeatureBooksSuccessState extends FeatureBooksBlocState {
  final List<Items> featureBookSuccess;
 const FeatureBooksSuccessState(this.featureBookSuccess);
}
