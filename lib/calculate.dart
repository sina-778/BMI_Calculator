import 'dart:math';
class Calculate{


  int height;
  int wight;
  late double result = .9;


  Calculate({required this.height,required this.wight});

  String cal(){
    result=(wight/(height*height));
    //double result1 = double.parse((result).toStringAsFixed(2));
    return result.toStringAsFixed(3);
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