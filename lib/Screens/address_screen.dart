import 'package:address/Model/address_model.dart';
import 'package:address/Screens/address_details_screen.dart';
import 'package:address/widgets/address_card_widget.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  List<AddressCardModel> address = [
    AddressCardModel(
        name: "thrishika",
        address:
            "Balamurali Nilaya, Kudlu,Rd Nagar,Sheshavana temple,Kasargod,Kerala,India-671124",
        phone: "+91 7025911389"),
    AddressCardModel(
        name: "thrishika",
        address:
            "Balamurali Nilaya, Kudlu,Rd Nagar,Sheshavana temple,Kasargod,Kerala,India-671124",
        phone: "+91 7025911389"),
    AddressCardModel(
        name: "thrishika",
        address:
            "Balamurali Nilaya, Kudlu,Rd Nagar,Sheshavana temple,Kasargod,Kerala,India-671124",
        phone: "+91 7025911389"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf0f4f4),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110.0),
          child: Stack(children: [
            AppBar(


              backgroundColor: Colors.white,

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Material(
                  color: Colors.white,
                  elevation: 3,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_back)),

                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              "Addresses",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddressDetailsScreen()));
                              },
                              child: const Text(
                                "+ Add address",
                                style: TextStyle(color: Color(0xFF147C94)),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final addresses = address[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          addresses.name,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          maxLines: 2,
                          addresses.address,
                          style: const TextStyle(color: Color(0xFFACACAC)),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            const Text("Phone  : ",style: TextStyle(color: Color(0xFFACACAC)),),
                            Text(
                              addresses.phone,
                              style: const TextStyle(color:Color(0xFFACACAC),fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 0.5,
                          color: Color(0xFFACACAC),),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Delete",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddressDetailsScreen()));
                                },
                                child: const Text(
                                  "Edit",
                                  style: TextStyle(
                                      color: Color(0xFF147C94),
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: address.length,
          ),
        ));
  }
}
