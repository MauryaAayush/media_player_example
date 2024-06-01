class InputModel{
  final String img;
  final String quote;
  final String writer;

  InputModel({required this.img, required this.quote, required this.writer});
}


List<InputModel> imgTextList = [
  InputModel(img: 'assets/images/img1.jpg', quote: 'quote', writer: 'writer'),
  InputModel(img: 'assets/images/img2.jpg', quote: 'quote', writer: 'writer'),
  InputModel(img: 'assets/images/img3.jpg', quote: 'quote', writer: 'writer'),
  InputModel(img: 'assets/images/img4.jpg', quote: 'quote', writer: 'writer'),
  InputModel(img: 'assets/images/img5.jpg', quote: 'quote', writer: 'writer'),

];