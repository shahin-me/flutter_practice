
import 'package:test_mvvm/model/picsum_model.dart';
import 'package:test_mvvm/services/services.dart';

class ListPictureViewModel{
  List<PictureViewModel>? pictures;

  Future<void> fetchPictures() async{
    final apiResult = await Service().fetchPicturdsAPI();
    this.pictures = apiResult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}