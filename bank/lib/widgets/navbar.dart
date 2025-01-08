import 'package:bank/screens/settings.dart';
import 'package:bank/screens/transfer.dart';
import 'package:bank/screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class navbar extends StatefulWidget {
  final Color backgorundColor;
  final onPressed;

  const navbar(
      {Key? key,
      this.backgorundColor =  Colors.white ,
      this.onPressed})
      : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    //Icons
    final _icons = [

      const Column(
        children: [
          Icon(
            Icons.wallet,
            color: Colors.black,
            size: 40,
          ),
          Text("WALLET",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
      const Column(
        children: [
          Icon(
            Icons.money,
            color: Colors.black,
            size: 40,
          ),

          Text("TRANSFER",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),

      const Column(
        children: [
          Icon(
            Icons.settings,
            color: Colors.black,
            size: 40,
             
          ),

          Text("SETTINGS",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),)
        ],
      )
    ];

    final _pages = [ Wallet(), Transfer(), Settings()];

    // Icons tooltips
    final _tooltip = [ "Wallet", "Transfer", "Settings"];

    
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomAppBar(
          color: widget.backgorundColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              3,
              (index) => IconButton(
                onPressed: () {
                  Get.to(() => _pages[index]);
                  print(index);
                },
                tooltip: _tooltip[index],
                icon: _icons[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
