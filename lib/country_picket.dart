import "package:flutter/material.dart";

class CountryPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                //SizedBox(height: 20.0),
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  // dense: true,
                  // showFlag: false, //displays flag, true by default
                  // showDialingCode:true, //displays dialing code, false by default
                  // showName: true, //displays country name, true by default
                  // showCurrency: false, //eg. 'British pound'
                  // showCurrencyISO: false,
                  // onChanged: (Country country) {
                  //   setState(() => _selected = country);
                  //   print(country.dialingCode);
                  //   countryCode = country.dialingCode;
                  //   },
                  // selectedCountry: _selected,
                ),
              ),
              Expanded(
                flex: 3,
                //SizedBox(height: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mobile no.',
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) => val.length != 10
                      ? 'Enter a mobile number of 10 digits'
                      : null,
                  onChanged: (val) {
                    // setState(() => phone = val);
                    // phoneno = phone;
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
