import 'package:flutter/material.dart';
import '/controllers/image_controller.dart';
import '/models/image_model.dart';
import '/models/quote_model.dart';
import '/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImageController _imageController = ImageController();
  final ApiService _apiService = ApiService();
  late ImageModel _currentImage;
  late QuoteModel _currentQuote;

  @override
  void initState() {
    super.initState();
    _initializeData();
    // _captureAndGenerate();
  }

  //Just to check, remove once u pull and start working
  Future<void> _initializeData() async {
    // Dummy image data (replace with actual image capture logic)
    final dummyImageData = 'dummy_image_data';
    // Dummy quotes (replace with actual quote generation logic)
    final dummyQuotes = [
      "Quote 1",
      "Quote 2",
      "Quote 3",
      "Quote 4",
      "Quote 5",
    ];
    setState(() {
      _currentImage = ImageModel(data: dummyImageData);
      _currentQuote = QuoteModel(quotes: dummyQuotes);
    });
  }

  // Future<void> _captureAndGenerate() async {
  //   final image = await _imageController.captureImage();
  //   final emotion = ''; // Call emotion analysis API to get emotion from image
  //   final quotes = await _apiService.generateQuotes(emotion);
  //   setState(() {
  //     _currentImage = image;
  //     _currentQuote = QuoteModel(quotes: quotes);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmoSense'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Current Emotion: ${_currentImage.data}'), // Display current emotion
            SizedBox(height: 20),
            Column(
              children: _currentQuote.quotes
                  .map((quote) => Text(quote))
                  .toList(), // Display quotes
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _initializeData,
              child: Text('Capture Image & Generate Quotes'),
            ),
          ],
        ),
      ),
    );
  }
}
