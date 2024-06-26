import 'package:google_fonts/google_fonts.dart';
import '../haders.dart';
import '../modal/app_modal.dart';

String imagePath = "lib/assets/images/";
String imagePathB = "lib/assets/imageB/";

Map<String, dynamic> allAppData = {
  "festivals": [
    {
      "name": "Diwali",
      "image": "${imagePath}Diwali.jpg",
      "imageB": "${imagePathB}DiwaliB.jpg",
      "quotes": [
        "दीपावલી ની હાર્દિક શુભકામનાઓ! તમારો જીવન ખુશી અને ઉત્સાહના સાથે ભરાયું રહે.",
        "દીપાવળીની આ પાવન અવસરે તમારે અને તમારા પરિવારને શુભકામનાઓ!",
        "તમારા ઘરમાં દિવા ની રૌશની માંડો!",
        "દીવાળીનો ઉત્સવ તમારા જીવનમાં ખુશીનો ઉત્સાહ લઈ આવે.",
        "દીપાવળીની આ પાવન અવસરે તમને ધન, શૌહરત અને સફળતા મળે.",
      ]
    },
    {
      "name": "Holi",
      "image": "${imagePath}Holi.jpg",
      "imageB": "${imagePathB}HoliB.jpg",
      "quotes": [
        "હોળીના આ રંગીન તહેવારમાં તમારા જીવનમાં ખુશી અને રંગ ભર્યો!",
        "હોળીના આ પાવન અવસરે તમને અને તમારા પરિવારને ઢેરો શુભકામનાઓ!",
        "હોળીના રંગોમાં ગુલાલની ખુશી, અને મિત્રો સાથે પ્રેમનો પ્રકટીકરણ.",
        "હોળીની શુભકામનાઓ! ગુલાલનો ઉત્સવ તમારા જીવનમાં સફળતા અને ખુશી લઈ આવે.",
      ]
    },
    {
      "name": "Makar Sankranti",
      "image": "${imagePath}Makarsakranti.jpg",
      "imageB": "${imagePathB}MakarsakrantiB.jpg",
      "quotes": [
        "મકર સંક્રાંતિની આ પાવન પર્વમાં તમારે અને તમારા પરિવારને બહું બહું શુભકામનાઓ.",
        "ઉત્તરાયણના આ મોસમમાં તમારો જીવન ખુશીથી ભરાયો હોવો.",
        "સૂર્ય દેવની કિરણોથી તમારો જીવન પ્રકાશમય રહે.",
        "મકર સંક્રાંતિની આ પાવન અવસરે તમારે સમૃદ્ધિ અને સફળતા મળે.",
        "ઉત્તરાયણના આ શુભ સમયમાં તમારે નવું વર્ષ અને નવી આશાઓ.",
      ]
    },
    {
      "name": "Navratri",
      "image": "${imagePath}Navratri.jpg",
      "imageB": "${imagePathB}NavratriB.jpg",
      "quotes": [
        "નવરાત્રીના આ પાવન પર્વમાં માં દુર્ગા ની કૃપા તમારે બની રહે.",
        "તમારો જીવન નવરાત્રીના આ પાવન તહેવારની ખુશિઓ સાથે ભરો.",
        "નવરાત્રીના આ શુભ અવસર પર માં દુર્ગા સે પ્રાર્થના કરું છું કે તમારી હર ઇચ્છા પૂરી થાય.",
        "નવરાત્રીના યા નૌ દિવસ તમને આત્મા અને શક્તિ સાથે ભરી જીવવું.",
        "નવરાત્રીના પાવન અવસરે તમારા જીવનમાં ખુશિઓનું અનંત સ્રોત હો.",
      ]
    },
    {
      "name": "Ganesh Chaturthi",
      "image": "${imagePath}Ganesh_Chaturthi.jpg",
      "imageB": "${imagePathB}Ganesh_ChaturthiB.jpg",
      "quotes": [
        "ગણેશ ચતુર્થીના આ પાવન અવસર પર તમને અને તમારા પરિવારને ઢેરો શુભકામનાઓ.",
        "ગણપતિ બપ્પા મોરિયા! માંગલમૂર્તિ મોરિયા! તમારા જીવનમાં આવે ખુશીઓ નો ઉદ્ઘાટન.",
        "ગણેશ ચતુર્થીના આ પાવન મોકે પર ભગવાન ગણેશ તમને બુદ્ધિ અને સફળતા પ્રદાન કરે.",
        "ગણેશ ચતુર્થીની આ ખાસ પાવન અવસર પર તમારો જીવન સુખ અને સમૃદ્ધિથી ભરે.",
        "ગણેશ ચતુર્થીની શુભકામનાઓ! ગણપતિ બપ્પા મોરિયા!",
      ]
    },
    {
      "name": "Raksha Bandhan",
      "image": "${imagePath}Raksha_Bandhan.jpg",
      "imageB": "${imagePathB}Raksha_BandhanB.jpg",
      "quotes": [
        "રક્ષાબંધન ની આ પાવન અવસર પર તમને અને તમારો ભાઈ ને ઢેરો શુભકામનાઓ.",
        "રક્ષાબંધન ને ઈશ્વર તમારી રક્ષા માટે મારી શુભકામનાઓ.",
        "ભાઈ અને બહેન નો આ મધુર બંધન તમારા પરિવારમાં સુખની દીવાળી લાવે.",
        "રક્ષાબંધન નો આ પાવન ત્યોહાર તમારા જીવનમાં સમૃદ્ધિ અને સુખ લાવે.",
        "રક્ષાબંધન ની આ પાવન ત્યોહાર માં ભાઈ-બહેન નો પ્યાર અને મમતા પ્રકટ કરો.",
      ]
    },
    {
      "name": "Maha Shivaratri",
      "image": "${imagePath}Shivratri.jpg",
      "imageB": "${imagePathB}ShivratriB.jpg",
      "quotes": [
        "મહા શિવરાત્રિ ની આ પાવન અવસર પર ભગવાન શિવ ની કૃપા તમારે બની રહે.",
        "તમારો જીવન મહા શિવરાત્રિ ની શુભકામનાઓ.",
        "ભગવાન શિવ ની આશીર્વાદ તમારા સર્વ કષ્ટો દૂર કરે.",
        "મહા શિવરાત્રિ ની આ પાવન દિવસ પર તમારી સર્વ મનોકામનાઓ પૂરી થાય.",
        "ભગવાન શિવ નો આશીર્વાદ તમારા જીવન ને સુખ, શાંતિ, અને સમૃદ્ધિ થી ભરે.",
      ]
    },
    {
      "name": "Janmashtami",
      "image": "${imagePath}Janmashtami.jpg",
      "imageB": "${imagePathB}JanmashtamiB.jpg",
      "quotes": [
        "જન્માષ્ટમી ની આ પાવન અવસર પર તમારે અને તમારા પરિવારને ઢેરો શુભકામનાઓ.",
        "કૃષ્ણ કી માખન ચોરી નો આ વિશેષ દિવસ તમારા જીવનમાં સફળતા અને ખુશિઓ લાવે.",
        "રાધા કૃષ્ણ ના પ્રેમ ને યાદ કરીને મનાવો જન્માષ્ટમીનો ત્યોહાર.",
        "જન્માષ્ટમીના આ પાવન અવસરે તમારા ઘરે ખુશબૂ માંડો અને જીવન ની મિઠાસ વધારો.",
        "જન્માષ્ટમીની શુભકામનાઓ! કૃષ્ણ કી જૈ!",
      ]
    }
  ]
};

FestivalData festivalData = FestivalData.fromMap(allAppData);

// List<TextStyle> quoteFontFamily = [
//   GoogleFonts.abel(),
//   GoogleFonts.roboto(),
//   GoogleFonts.dancingScript(),
//   GoogleFonts.bitter(),
//   GoogleFonts.anton(),
//   GoogleFonts.yatraOne(),
//   GoogleFonts.pacifico(),
//   GoogleFonts.fjallaOne(),
//   GoogleFonts.shadowsIntoLight(),
//   GoogleFonts.indieFlower(),
//   GoogleFonts.zillaSlab(),
//   GoogleFonts.satisfy(),
//   GoogleFonts.permanentMarker(),
//   GoogleFonts.amaticSc(),
//   GoogleFonts.cinzel(),
//   GoogleFonts.sairaCondensed(),
//   GoogleFonts.kalam(),
//   GoogleFonts.courgette(),
//   GoogleFonts.righteous(),
//   GoogleFonts.tinos(),
//   GoogleFonts.lobster(),
//   GoogleFonts.changa(),
//   GoogleFonts.greatVibes(),
//   GoogleFonts.zeyada(),
//   GoogleFonts.aladin(),
//   GoogleFonts.kaushanScript(),
//   GoogleFonts.pathwayGothicOne(),
//   GoogleFonts.sacramento(),
// ];
