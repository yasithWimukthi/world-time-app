import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;
  String time;
  String flag;
  String url;


  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try{
      Response response = await get("https://http://worldtimeapi.org/timezone/$url");
      Map data = jsonDecode(response.body);
      //print(data);

      // get properties from data
      String datetime = data["datetime"];
      String offset = data["utc_offset"].subString(1,3);

      //create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = DateFormat.jm().format(now);
    }catch(e){
      print('Error : $e');
      time = "could not get time data";
    }


  }
}
