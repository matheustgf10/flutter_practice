import 'package:flutter/material.dart';

// TODO: Controllers for Text Fields
// TODO: Verification that none is empty

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String hostelname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),

        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/4
            ),
            Column(
              children: [
                TextField(
                  focusNode: FocusNode(),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      labelText: 'Name',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  focusNode: FocusNode(),
                  controller: TextEditingController(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      labelText: 'Roll Number',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Container(
                        padding: EdgeInsets.symmetric(horizontal: 11),
                        child: Text(
                          'Hostel',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontSize: 16),
                        ),
                      ),
                      value: hostelname,
                      onChanged: (String newValue) {
                        setState(() {
                          hostelname = newValue;
                        });
                      },
                      isExpanded: true,
                      style: Theme.of(context).textTheme.bodyText1,
                      items: <String>[
                        'C.V. Raman',
                        'Morvi',
                        'Dhanrajgiri',
                        'Rajputana',
                        'Limbdi',
                        'Vivekanand',
                        'Vishwakarma',
                        'Vishweshvaraiya',
                        'Aryabhatt-I',
                        'Aryabhatt-II',
                        'S.N. Bose',
                        'Ramanujan',
                        'Gandhi Smriti Chhatravas (OLD)',
                        'Gandhi Smriti Chhatravas (Extension)',
                        'IIT (BHU) Girls’ Hostel',
                        'S.C. Dey Girls',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 11),
                            child: Text(
                              value,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(fontSize: 16),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  focusNode: FocusNode(),
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      labelText: 'Room',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 45,
                  child: RaisedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    highlightElevation: 5,
                    color: Color(0xFF181D3D),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.asset(
                    "assets/app_logo.png",
                  ),
                ),
                Text('© InstiComplaints',
                    style: TextStyle(fontSize: 16, color: Colors.black)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
