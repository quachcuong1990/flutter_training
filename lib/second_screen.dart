import 'package:flutter/material.dart';
import 'package:practice_200lab/values/app_colors.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
  Widget getBody(){
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(
            left: 20,right: 20,top: 15
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage("https://vnwriter.net/wp-content/uploads/2019/07/phim-hay-ve-boyka.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text("Chats",style: TextStyle(fontSize: 22,color: AppColors.black,fontWeight: FontWeight.bold),),
              Icon(Icons.edit)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              controller: _searchController,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search,color: Colors.black,),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 75,
            height: 75,
            child: Stack(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: Colors.lightBlueAccent
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://sc04.alicdn.com/kf/H5b0183557cec4043946f03208a7a29dat.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                ),


                Positioned(
                  bottom: 8,
                  left: 55,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: AppColors.online,
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3,
                            color: AppColors.textColorWhite
                        )
                    ),
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

