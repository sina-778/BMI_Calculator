import 'dart:math';
class Calculate{


  int height;
  int wight;
  late double result = .9;


  Calculate({required this.height,required this.wight});

  String cal(){
    result=(wight/(height*height));
    return result.toString();
  }

   feed(){
    if(result<=18){
      return "Under Wight";
    }
    else if(result<=25){
      return "Normal";
    }
    else{
      return "Over Wight";
    }
  }
}