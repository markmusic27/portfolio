import 'package:portfolio/core/services/generateGradientImage/generateGradientImage.services.dart';
import 'package:portfolio/core/services/serializeJson/serializeJson.services.dart';
import 'package:portfolio/core/services/sizeQuery/sizeQuery.services.dart';

class Services {
  SizeQuery sizeQuery = SizeQuery();
  GenerateGradientImage generateGradientImage = GenerateGradientImage();
  SerializeJSON serializeJSON = SerializeJSON();
}
