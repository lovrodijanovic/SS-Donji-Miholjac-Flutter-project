import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class AboutSchool extends StatelessWidget {
  static const String aboutSchool =
      "Srednja škola Donji Miholjac javna je ustanova koja obavlja svoju djelatnost u skladu s Aktom o osnivanju škole i rješenjima ministarstva nadležnog za poslove obrazovanja i odobrenja izvođenja programa. Službeno je registrirana 12. studenog 1992. godine i pod ovim nazivom djeluje kao pravni sljedbenik Srednjoškolskog centra 'Braća Ribar' Donji Miholjac. Škola je polivalentna jer obrazujemo učenike u četiri područja kako za trogodišnja tako i četverogodišnja zanimanja i programe. Više o školi potražite na dijelu 'Povijest' i 'Nastava'. U prilogu se nalaze prezentacije o našem gradu, a video prikaze škole možete potražiti na Youtube kanalu naše škole.";

  const AboutSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'O školi',
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(child: Text(aboutSchool))),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: const Text('Povijest')),
            ElevatedButton(onPressed: () {}, child: const Text('Kontakti')),
            ElevatedButton(onPressed: () {}, child: const Text('Dokumenti škole')),
            ElevatedButton(onPressed: () {}, child: const Text('Knjižnica')),
            ElevatedButton(onPressed: () {}, child: const Text('Godišnjaci')),
            ElevatedButton(onPressed: () {}, child: const Text('Razredi')),
            ElevatedButton(onPressed: () {}, child: const Text('Djelatnici'))
          ],
        ));
  }
}
