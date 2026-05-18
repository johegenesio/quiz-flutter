import 'package:flutter/material.dart';
import 'package:quiz/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  final int point;
  const ResultPage({Key? key, required this.point}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados do Quiz', style: GoogleFonts.ibmPlexMono(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color(0xDD303030))),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                child: Image.asset('assets/IceCream.png',),
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 8), // Ajuste a quantidade de margem conforme necessário
                  child: Text(
                  'Parabéns!\nVocê concluiu o quiz!',
                    style: GoogleFonts.delaGothicOne(color: Colors.black, fontSize: 24),
                    textAlign: TextAlign.center,
                ),
              ),
              Text('Você Acertou: $point',
              style: GoogleFonts.ibmPlexMono(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushAndRemoveUntil(MaterialPageRoute(builder: (_)=>const HomePage() ), (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800], padding: const EdgeInsets.fromLTRB(32, 16, 32, 16)),
                  child: Text(
                  'Voltar para o home',
                  style: GoogleFonts.ibmPlexMono(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
