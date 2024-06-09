import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class QrGenerator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _QrGeneratorState() ;
}
class _QrGeneratorState extends State<QrGenerator>{

  TextEditingController textController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Generate QR Code"),),
     body: Container(
       height: double.infinity,
       width: double.infinity,
       color: Colors.tealAccent.shade100,
       child: Center(
         child: SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(height:15, ) ,
           
               ///////////// QR Code Show First
                 if(textController.text.isNotEmpty)
                 Container(
                   height: 300,
                     width: 300,
                     decoration: BoxDecoration(
                       color: Colors.redAccent.shade100 ,
                       boxShadow: [BoxShadow(color: Colors.deepPurple , blurRadius: 20)] ,
                       borderRadius: BorderRadius.circular(15)
                         
                     ),
                     child: QrImageView(data:textController.text,size:200 , padding: EdgeInsets.all(12), gapless: false,) ),
           
               SizedBox(height: 20,) ,
           
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: TextField(
                   controller: textController,
                   style: TextStyle(color: Colors.deepOrangeAccent , fontWeight: FontWeight.w700 , fontSize: 20) ,
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.format_color_text_rounded , color: Colors.deepPurple , size: 25,),
                     label: Text("Enter Your Text" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w700 , color: Colors.red.shade400),),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(14) ,
                       borderSide: BorderSide(color: Colors.deepPurple , width: 2)
                     ) ,
                     disabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(width: 2 , color: Colors.deepPurple) ,
                       borderRadius: BorderRadius.circular(14) ,

                     ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(14) ,
                       borderSide: BorderSide(width: 2 , color: Colors.red)
                     )
                   ),
                 ),
               ) ,
           
               Container(
                 width: 300,
                   child: FloatingActionButton(onPressed: (){
                     setState(() {
           
                     });
                   } ,
                     child: Text("Generate QR Code" ,
                       style: TextStyle(fontWeight: FontWeight.w700 ,
                           fontSize: 25 , color: Colors.red),
                     ),
                     splashColor: Colors.amber,
                     backgroundColor: Colors.yellowAccent.shade400,) ,
           
               )
             ],
           ),
         ),
       ),
     ),
   ) ;
  }

}

// final check


