import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_hands_on_2/pages/list_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: Text("Home Page",
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          backgroundColor: Colors.red.shade500,
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Center(
              child: Text("Listagem e navegação",
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
          Center(
            child: Text(
                "Uma aplicação para gerência de estado e navegação com Flutter",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400)),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SegundaPagina()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Ir para List Page",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
          )
        ],
      ),
    );
  }
}
