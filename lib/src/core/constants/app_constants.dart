import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApplicationConstants {
  static final baseUrl = '${dotenv.env['BASE_URL']}';
  static final apiKey = '${dotenv.env['API_KEY']}';
}
