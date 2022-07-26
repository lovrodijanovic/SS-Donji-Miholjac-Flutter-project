import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/functionality_screen.dart';

class FirstGrade extends StatelessWidget {
  final String _url_2022_2023 =
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf';
  final String _url_2021_2022 =
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natje%C4%8Daj%20za%20upis%20u%20prvi%20razred%20%C5%A1kolske%20godine%202021-2022.pdf';
  final String _url_2020_2021 =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natje%C4%8Daj%20za%20upis%20u%20%C5%A1kolsku%20godinu%202020-2021..pdf';
  final String _url_2019_2020 =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natje%C4%8Daj%20za%20upis%20u%20prvi%20razred%202019-2020.pdf';
  final String _url_2018_2019 =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj%20za%20upis%20u%20skolsku%20godinu%202018-2019.pdf';
  final String _url_2017_2018 =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj%20za%20upis%20u%20skolsku%20godinu%202017-2018.pdf';
  final String _url_2016_2017 =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/NAtjecaj%20za%20upis%20u%20skolsku%20godinu%202016-2017.pdf';

  const FirstGrade({Key? key}) : super(key: key);

  _launchURLBrowser() async {
    if (await canLaunch(_url_2022_2023)) {
      await launch(_url_2022_2023);
    } else {
      throw 'Could not launch $_url_2022_2023';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Prvi razredi',
        child: ListView(
          children: [
            Column(
              children: [
                const TextBlock(
                    'Poštovani. Na ovom mjestu možete pronaći u prilozima natječaje raspisane za upis u prvi razred kao i sve ostale važne informacije potrebne za donošenje odluke o izboru za upis u prvi razred i samu proceduru upisa. Kako se bude približavao trenutak samih upisa moći će te pronaći sve više korisnih informacija koje će Vam olakšati odluku koji program i zanimanje želite odabrati u našoj školi u kojoj će te upravo vi biti prvi razredi u našim novim prostorima suvremeno opremljene zgrade i sportske dvorane. Natječaj za upis u 1. razred u školskoj godini 2022. / 23. pogledajte klikom na gumb ispod.'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(0, 109, 119, 1)),
                  onPressed: _launchURLBrowser,
                  child: Text(
                    '''
    Natječaj za upis u prvi 
razred 2022./2023. godine''',
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    'Natječaji za upis prijašnjih godina:',
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ),
                MyTextButton("2021./22.", _url_2021_2022),
                MyTextButton("2020./21.", _url_2020_2021),
                MyTextButton("2019./20.", _url_2019_2020),
                MyTextButton("2018./19.", _url_2018_2019),
                MyTextButton("2017./18.", _url_2017_2018),
                MyTextButton("2016./17.", _url_2016_2017),
              ],
            ),
          ],
        ));
  }
}
