import 'package:flutter/material.dart';

class but extends StatefulWidget {
  @override
  State<but> createState() => _butState();
}

class _butState extends State<but> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: const Text('transcation'),
          onPressed: () {
            bottomsheet();
          }),
    );
  }

  void bottomsheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Padding(padding:
              MediaQuery
                  .of(context)
                  .viewInsets,
                child:Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top:24.0,bottom:16.0),
                        child: Text('Transaction failed',
                            style:TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff202020),
                                fontSize:20,
                    )),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Image(image:AssetImage('assests/transaction_failed.png'),
                          width:96,
                          height:96,),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('₹999/-',
                            style:TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xff202020),
                              fontSize:24,
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top:16.0),
                        child: Text('There was some issue while',
                            style:TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff606060),
                              fontSize:14,
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Text('processing the payment. Try again!',
                            style:TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff606060),
                              fontSize:14,
                            )),
                      ),

                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height:60,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            side: const BorderSide(color: Colors.black)),
                                        backgroundColor: Colors.transparent,
                                        foregroundColor: Colors.black,
                                        elevation: 0,
                                      ),
                                      child: const Text(
                                        'Back',
                                        style:TextStyle(
                                            color: Color(0xff202020),
                                            fontWeight: FontWeight.w700,
                                            fontSize:16),
                                      ),
                                      onPressed: () {Navigator.pop(context);}
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height:60,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),),
                                        backgroundColor: const Color(0xff202020),
                                        elevation: 0,
                                      ),
                                      child: const Text(
                                        'Retry payment',
                                        style:TextStyle(
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w700,
                                            fontSize:16),
                                      ),
                                      onPressed: () {Navigator.pop(context);}
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}


