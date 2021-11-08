import 'package:flutter_dotenv/flutter_dotenv.dart';

class StorageName {
   static final String box_name = dotenv.get('BOX_NAME');
}