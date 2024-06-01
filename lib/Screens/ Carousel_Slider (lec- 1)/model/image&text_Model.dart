class InputModel{
  final String img;
  final String quote;
  final String writer;

  InputModel({required this.img, required this.quote, required this.writer});
}


List<InputModel> imgTextList = [
  InputModel(img: 'assets/images/img1.jpg', quote: '"तुम्हारा अधिकार केवल कर्म करने में है, फल में कभी नहीं।"', writer: 'श्री कृष्ण'),
  InputModel(img: 'assets/images/img11.jpg', quote: '"असफलता सिर्फ यह सिद्ध करती है कि प्रयास पूरे मन से नहीं किया गया।"', writer: 'श्री कृष्ण'),
  InputModel(img: 'assets/images/img12.jpg', quote: '"स"अपने कर्मों में विश्वास रखो, परिणामों का डर मत रखो।"', writer: 'श्री राम'),
  InputModel(img: 'assets/images/img10.jpg', quote: '"जिन्हें हम चाहते हैं, उनसे कुछ नहीं चाहते।"', writer: 'श्री कृष्ण'),
  InputModel(img: 'assets/images/img5.jpg', quote: '"सपने वो नहीं जो हम सोते समय देखते हैं, सपने वो हैं जो हमें सोने नहीं देते।"', writer: 'डॉ. ए.पी.जे. अब्दुल कलाम'),

];