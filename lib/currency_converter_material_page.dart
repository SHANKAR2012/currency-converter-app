


import 'package:flutter/material.dart';
// 1.Create a variable that stores the converted currency value
//2.Create a function that multiplies the value given by the text field with 81
//3.Store the value in the variable that we created
//4. display the variable

class CurrencyConverterMaterialPage extends StatefulWidget {
   const CurrencyConverterMaterialPage({super.key});




  @override
  State<CurrencyConverterMaterialPage> createState() =>

     _CurrencyConverterMaterialPageState();

}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
double result=0;
final TextEditingController textEditingController=TextEditingController();
void convert(){
  result=double.parse(textEditingController.text)*81;

  setState(() {});

}
  @override
  void initState() {
    super.initState();


  }


  @override
  Widget build(BuildContext context) {




    const border=OutlineInputBorder(
      //colors have hexadecimal of the form 0xAARRGGBB
        borderSide: BorderSide(
          color:Colors.black,
          style:BorderStyle.solid,
          width:2.0,

        ),
        borderRadius: BorderRadius.all(Radius.zero)
    );
    return    Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text('Currency converter ',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
          ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            ' INR ${result!=0?result.toStringAsFixed(3):'0'}',


              style:  const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(255, 0, 0, 1),
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller:  textEditingController,
                decoration: const InputDecoration(
                  prefixIcon:Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.blue,
                  hintText: "Please enter amount in dollars",
                  filled:true,
                  fillColor: Colors.white,
                  focusedBorder:border,
                  enabledBorder: border,



                  hintStyle: TextStyle(
                    color:Colors.lightBlue,
                  ),
                ),
                keyboardType:const TextInputType.numberWithOptions(
                    decimal:true,
                    signed:false
                ),

              ),
            ),
            TextButton(onPressed:  convert,
              style:  const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.black),
                shape:WidgetStatePropertyAll(CircleBorder()),
                minimumSize: WidgetStatePropertyAll(Size(double.infinity,50),
                ),
              ),
              child: const Text('Convert ',
                style:TextStyle(
                  color: Colors.white,
                ),
              ),

            ),


          ],
        ),
      ) ,

    );
  }




}




