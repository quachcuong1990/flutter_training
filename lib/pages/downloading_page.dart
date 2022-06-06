import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  String downloadMessage = 'Initializing...';
  bool _isDownloading = false;
  double _percentage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FloatingActionButton.extended(onPressed: ()async{
                setState(() {
                  _isDownloading = !_isDownloading;
                });
                var dir = await getExternalStorageDirectory();
                Dio dio = Dio();
                dio.download('https://1.bp.blogspot.com/-d3JYJ0l6Cl8/XgatnQm5hxI/AAAAAAAA3ok/9Tt3iAVHZeg86R7IikqASv3eIwUBMvq1ACLcBGAsYHQ/s1600/hayvnnet-toat-mo-hoi-voi-em-gai-xinh-nguc-sieu-khung-nay-%2B%25284%2529.jpg',
                    '${dir?.path}/nguckhung.jpg',onReceiveProgress: (actualbytes,totalbytes){
                  var percentage = (actualbytes/totalbytes)*100;
                  _percentage = percentage/100;
                  setState(() {
                    downloadMessage = 'Downloading... ${percentage.floor()} %';

                  });
                    });
              },
                  label: Text('Download'),
              icon: Icon(Icons.file_download),),
              SizedBox(height: 25,),
              Text(downloadMessage??''),
              LinearProgressIndicator(
                value: _percentage,
              )
            ],
          ),
        ),
      ),
    );
  }
}
