
import 'package:protflio_website/riverpod/repository/opacity_repository.dart';

class GetInitialOpacity {
   final OpacityRepository opacityRepository;

   GetInitialOpacity(this.opacityRepository);
   double call (){
     return opacityRepository.getInitialOpacity();
   }
}