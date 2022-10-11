import 'package:flutter/material.dart';
import 'package:mydoket/Screen/drw/confpass.dart';

class radios extends StatelessWidget {
  const radios({Key? key}) : super(key: key);

  get textarea => null;

  @override
  Widget build(BuildContext context) {

    String downloadmessage= 'Download This Form';
    double percentage=0;
    bool _isdownloading = false; //download button

    String? valueChoose;
    List listitem =[
      "Select Services",
      "Business Registration",
      "Udyam Registration",
      "Project Report For Business",
      "CMA Data Preparation",
      "Building Construction Plan Preparation",
      "Other",
    ];
    var size = MediaQuery.of(context).size;


    int _value= 1; //for Radio button

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, //1
        children: [
          RichText(
            text: TextSpan(
                children: <TextSpan>[
                  //SizedBox(height: 10.0,),
                  TextSpan(text: 'QUOTATION REQUEST',style:
                  TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w900,color: Colors.indigo
                  )
                  )
                ]
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            children: [
              Radio(
                value: 1, groupValue: _value, onChanged: (value){
                setState((){
                });
              },
              ),
              Text("All Expert",style: TextStyle(fontWeight: FontWeight.bold),),
              //SizedBox(width: 10.0,),
              Row(
                children: [
                  Radio(
                    value: 2, groupValue: _value, onChanged: (value){
                    setState((){});
                  },
                  ),
                  //SizedBox(width: 10.0,),
                  Text('Area Pincode',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3, groupValue: _value, onChanged: (value){
                    setState((){});
                  },
                  ),
                  //SizedBox(width: 10.0,),
                  Text('Area Pincode',style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.indigo,width: 3,)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: DropdownButtonFormField(
                  iconSize: 25,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 3,color: Colors.grey)
                    )
                  ),
                  hint: Text('Select Service',style: TextStyle(color: Colors.indigo),),
                  dropdownColor: Color(0xffeeeeee),
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  // elevation: 52,
                  isExpanded: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),
                  value: valueChoose,
                  onChanged: (newValue){
                    setState(() {
                      valueChoose = newValue as String?;
                    });
                  },
                  items: listitem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),



          Column(
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: ()async{
                  setState(() {
                    _isdownloading=! _isdownloading;
                  });

                  var dir= await getExternalStorageDirectory();
                  Dio dio = Dio();
                  dio.download('https://mydoket.com/Enquiry_Form.pdf',
                      '${dir.path}/mydocket.pdf',
                      onReceiveProgress:(actualbytes,totalbytes){
                        var percentage=actualbytes/totalbytes*100;
                        percentage=percentage/100;
                        setState(() {
                          downloadmessage='Downloading......${percentage.floor()} %';
                        });
                      });
                },
                label: Text("Download Enquiry Form"),
                icon: Icon(Icons.file_download),
              ),
              SizedBox(height: 15,),
              Text(downloadmessage ?? '',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
          SizedBox(height: 20,),

          Text("File Dwonloaded & Upload",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.indigo),),
          SizedBox(height: 10,),

          Column(
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: ()async{
                  setState(() {
                    _isdownloading=! _isdownloading;
                  });

                  var dir= await getExternalStorageDirectory();
                  Dio dio = Dio();
                  dio.download('https://mydoket.com/Enquiry_Form.pdf',
                      '${dir.path}/mydocket.pdf',
                      onReceiveProgress:(actualbytes,totalbytes){
                        var percentage=actualbytes/totalbytes*100;
                        setState(() {
                          downloadmessage='Downloading......${percentage.floor()} %';
                        });
                      });
                },
                label: Text("Choose File"),
                icon: Icon(Icons.upload),

              ),
              SizedBox(height: 15,),
            ],
          ),




          SizedBox(height: 20,),
          Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo,width: 3)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: "Description",
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(width: 3, color: Colors.indigo)
                    // ),
                ),

              ),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                print(textarea.text);
              },
              child: Text("Submit")
          ),


        ],
      ),
    );
  }
  void setState(Null Function() param0) {}

  getExternalStorageDirectory() {}
}

class Dio {
  void download(String s, String t, {required Null Function(dynamic actualbytes, dynamic totalbytes) onReceiveProgress}) {}
}
