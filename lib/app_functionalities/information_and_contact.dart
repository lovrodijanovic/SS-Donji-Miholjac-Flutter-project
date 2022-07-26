import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';
import '../models/functionality_screen.dart';

class InformationAndContact extends StatelessWidget {
  final String _webAdress = 'http://ss-donji-miholjac.skole.hr/';
  final String _location =
      'https://www.google.com/maps/place/Srednja+%C5%A1kola+donji+Miholjac/@45.7617766,18.170678,17z/data=!3m1!4b1!4m5!3m4!1s0x475d4736e40af4cd:0x7aee66bfa39e3bc4!8m2!3d45.7617729!4d18.1751627';

  final String info = '''
Adresa: 
Vukovarska 84, 31540 Donji Miholjac 

Brojevi telefona: 
Ravnatelj: 031 / 631 - 983
Tajništvo: 031 / 631 - 049
Računovodstvo: 031 / 630 - 970
Administracija: 031 / 633 - 156,

Opći podaci: 
IBAN: HR5323600001502689078
OIB: 04017904699
WEB: www.ss-donji-miholjac.skole.hr
E-MAIL: ured@ss-donji-miholjac.skole.hr''';

  const InformationAndContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Informacije i kontakt',
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(width: double.infinity, child: TextBlock(info)),
                MyTextButton("Link na web stranicu škole", _webAdress),
                MyTextButton("Naša lokacija na Google Maps", _location),
              ],
            ),
          ],
        ));
  }
}
