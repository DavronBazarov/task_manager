import 'package:flutter/material.dart';

class CreateTask extends StatefulWidget {
  final String data;

  const CreateTask({Key? key, required this.data}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9C2CF3),
      body: SafeArea(
          child: ListView(
             children: [
               buildAppBar(),
             buildInput(),
             const SizedBox(height: 30,),
             buildCategory(),
        ],
      )),
    );
  }

  Widget buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 26,
            )),
        const Text(
          "Create task",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 26,
            )),
      ],
    );
  }

  Widget buildInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          TextField(
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            autocorrect: true,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: "Name",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                )),
          ),
          TextField(
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            autocorrect: true,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: "Date",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                )),
          ),
        ],
      ),
    );
  }

  Widget buildCategory() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.72,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        "Start Time",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffBFC8E8),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("01:22 pm",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Column(
                    children: const [
                      Text(
                        "End Time",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffBFC8E8),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("03:20 pm",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffBFC8E8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffBFC8E8),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, er adipiscing elit, sed dianummy nibh euismod  dolor sit amet, er adipiscing elit, sed dianummy nibh euismod sed dianummy nibh euismod dolor sit amet sed dianummy nibh euismod  dolor sit amet, er adipiscing elit, sed dianummy nibh euismod.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffBFC8E8),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffBFC8E8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                buildChoice(),
                ],
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: const Color(0xff9C2CF3),
                  child: const Center(
                    child: Text(
                      "Create Task",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  List<String> text = ["Design", "Meeting", "Coding", "BDE", "Testing", "Quick call"];
bool isSelected = false;
  Widget buildChoice() {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 10,
      spacing: 12.0,
      children: List.generate(
        6,
        (int index) {
          return ChoiceChip(
            pressElevation: 0.0,
            selectedColor: Colors.blue,
            backgroundColor: Colors.grey[100],
            labelPadding:const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            label:  Text(text[index],),
            disabledColor: Colors.black45,
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = (selected ? index : null)!;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
