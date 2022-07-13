import 'package:flutter/material.dart';
import 'package:dhaka/components/nav_drawer.dart';
import 'package:dhaka/components/bottom_nav.dart';
//import 'package:dhaka/controllers/user_controllers.dart';
import 'package:dhaka/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dhaka/models/user_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image_picker/image_picker.dart';
import 'package:flutter/widgets.dart';
/*
Future<Album> fetchAlbum() async {
  // final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  final response = await http.get(Uri.parse('https://24bulksmsbd.com/json_test.php'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
    // return Users.fromJson(jsonresponse[0]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
*/

class CreateAccount extends StatefulWidget {
  // HomeScreen({Key key, this.title}) : super(key: key);
  // final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  Future<Album>? _futureAlbum;
  //Future<Album> futureAlbum;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();
  String baseimage='aaa';
  String status = 'One';

 // File uploadimage='test'; //variable for choosed file

/*
  Future<void> chooseImage() async {
    var choosedimage = await ImagePicker.pickImage(source: ImageSource.gallery);
    //set source: ImageSource.camera to get image from camera
    setState(() {
      uploadimage = choosedimage;
    });
  }
*/

/*  Future<Album> createAlbum(String name,String mobile, String status, String baseimage) async {
    List<int> imageBytes = uploadimage.readAsBytesSync();
    String baseimage = base64Encode(imageBytes);
    final response = await http.post(
      Uri.parse('https://www.24bulksmsbd.com/api/abc'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'mobile': mobile,
        'status': status,
        'baseimage': baseimage,
      }),
    );

    if (response.statusCode == 201) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }*/

  // Future<void> uploadImage() async {
  //   //show your own loading or progressing code here
  //
  //   String uploadurl = "https://24bulksmsbd.com/image_upload.php";
  //
  //   try{
  //     List<int> imageBytes = uploadimage.readAsBytesSync();
  //     String baseimage = base64Encode(imageBytes);
  //     //convert file image to Base64 encoding
  //     var response = await http.post(
  //         uploadurl,
  //         body: {
  //           'image': baseimage,
  //         }
  //     );
  //     if(response.statusCode == 200){
  //       var jsondata = json.decode(response.body); //decode json data
  //       if(jsondata["error"]){ //check error sent from server
  //         print(jsondata["msg"]);
  //         //if error return from server, show message from server
  //       }else{
  //         print("Upload successful");
  //       }
  //     }else{
  //       print("Error during connection to server");
  //       //there is error during connecting to server,
  //       //status code might be 404 = url not found
  //     }
  //   }catch(e){
  //     print("Error during converting to Base64");
  //     //there is error during converting file image to base64 encoding.
  //   }
  // }



 /* Future<void> chooseImage() async {
    var choosedimage = await ImagePicker.pickImage(source: ImageSource.gallery);
    //set source: ImageSource.camera to get image from camera
    setState(() {
      uploadimage = choosedimage;
    });
  }
  */
//, String baseimage
  Future<Album> createAlbum(String name,String mobile, String status) async {
 //   List<int> imageBytes = uploadimage.readAsBytesSync();
   // String baseimage = base64Encode(imageBytes);
    final response = await http.post(
      Uri.parse('https://www.24bulksmsbd.com/api/abc'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'mobile': mobile,
        'status': status,
     //   'baseimage': baseimage,
      }),
    );

  if (response.statusCode == 201) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }
  /*
  Future<void> uploadImage() async {
    //show your own loading or progressing code here

    String uploadurl = "https://24bulksmsbd.com/image_upload.php";

    try{
      List<int> imageBytes = uploadimage.readAsBytesSync();
      String baseimage = base64Encode(imageBytes);
      //convert file image to Base64 encoding
      var response = await http.post(
          uploadurl,
          body: {
            'image': baseimage,
          }
      );
      if(response.statusCode == 200){
        var jsondata = json.decode(response.body); //decode json data
        if(jsondata["error"]){ //check error sent from server
          print(jsondata["msg"]);
          //if error return from server, show message from server
        }else{
          print("Upload successful");
        }
      }else{
        print("Error during connection to server");
        //there is error during connecting to server,
        //status code might be 404 = url not found
      }
    }catch(e){
      print("Error during converting to Base64");
      //there is error during converting file image to base64 encoding.
    }
  }*/
  @override
/*  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }*/
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AMARPORASHUNA'),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // enabledBorder:OutlineButton.icon(onPressed: null, icon: Icons.home , label: null),
                    hintText: "Name Here",
                    labelText: 'Enter your username',
                  ),
/*                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },*/
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // enabledBorder:OutlineButton.icon(onPressed: null, icon: Icons.home , label: null),
                    hintText: "Email Here",
                    labelText: 'Enter your Email',
                  ),
/*                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },*/
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: DropdownButton<String>(
                  value: status,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      status = value;
                    });
                  },
                  items: <String>['One', 'Two', 'three', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(  //show image here after choosing image
                  child:uploadimage == null?
                  Container(): //if uploadimage is null then show empty container
                  Container(   //elese show image here
                      child: SizedBox(
                          height:150,
                          child:Image.file(uploadimage) //load image from file
                      )
                  )
              ),*/

              /*     Container(
              //show upload button after choosing image
                child:uploadimage == null?
                Container(): //if uploadimage is null then show empty container
                Container(   //elese show uplaod button
                    child:RaisedButton.icon(
                      onPressed: (){
                        uploadImage();
                        //start uploading image
                      },
                      icon: Icon(Icons.file_upload),
                      label: Text("UPLOAD IMAGE"),
                      color: Colors.deepOrangeAccent,
                      colorBrightness: Brightness.dark,
                      //set brghtness to dark, because deepOrangeAccent is darker coler
                      //so that its text color is light
                    )
                )
            ),*/

              /*Container(
                child: RaisedButton.icon(
                  onPressed: (){
                    chooseImage(); // call choose image function
                  },
                  icon:Icon(Icons.folder_open),
                  label: Text("CHOOSE IMAGE"),
                  color: Colors.deepOrangeAccent,
                  colorBrightness: Brightness.dark,
                ),
              ), ,baseimage*/
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 16.0),
                child:
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _futureAlbum = createAlbum(_controller.text,_mobileController.text, status );
                    });
                  },
                  child: const Text('Create Data'),
                ),
              ),
              /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child:SingleChildScrollView(
              child: FutureBuilder<Album>(
                future: futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                 //  return Text(snapshot.data.mobile);
                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount:2,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder:(context,i){
                          return ListTile(
                            title: Text(snapshot.data.name),
                            subtitle: Text(snapshot.data.mobile),
                          );
                        }
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
              ),
            ),*/
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      drawer: SidebarNav(),
      drawerEnableOpenDragGesture: false,
    );
  }
 /* FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text('TEST');
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );*/
  }