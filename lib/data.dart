class Part{
  int start;
  int end;
  int index;
  String name;
  String swar;
  Part({required this.name,required this.index,required this.start,required this.end,required this.swar});
}
class page{
  String name;
  int id;
  int pages;
  page({required this.name,required this.pages,required this.id});

}

String thefinal=
'''
اللَّهُمَّ ارْحَمْنِي بالقُرْءَانِ وَاجْعَلهُ لِي إِمَاماً وَنُوراً وَهُدًى وَرَحْمَةً ۞
اللَّهُمَّ ذَكِّرْنِي مِنْهُ مَانَسِيتُ وَعَلِّمْنِي مِنْهُ مَاجَهِلْتُ وَارْزُقْنِي تِلاَوَتَهُ آنَاءَ اللَّيْلِ وَأَطْرَافَ النَّهَارِ وَاجْعَلْهُ لِي حُجَّةً يَارَبَّ العَالَمِينَ ۞
اللَّهُمَّ أَصْلِحْ لِي دِينِي الَّذِي هُوَ عِصْمَةُ أَمْرِي وَأَصْلِحْ لِي دُنْيَايَ الَّتِي فِيهَا مَعَاشِي وَأَصْلِحْ لِي آخِرَتِي الَّتِي فِيهَا مَعَادِي وَاجْعَلِ الحَيَاةَ زِيَادَةً لِي فِي كُلِّ خَيْرٍ وَاجْعَلِ المَوْتَ رَاحَةً لِي مِنْ كُلِّ شَرٍّ ۞
اللَّهُمَّ اجْعَلْ خَيْرَ عُمْرِي آخِرَهُ وَخَيْرَ عَمَلِي خَوَاتِمَهُ وَخَيْرَ أَيَّامِي يَوْمَ أَلْقَاكَ فِيهِ ۞
اللَّهُمَّ إِنِّي أَسْأَلُكَ عِيشَةً هَنِيَّةً وَمِيتَةً سَوِيَّةً وَمَرَدًّا غَيْرَ مُخْزٍ وَلاَ فَاضِحٍ ۞
اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ المَسْأَلةِ وَخَيْرَ الدُّعَاءِ وَخَيْرَ النَّجَاحِ وَخَيْرَ العِلْمِ وَخَيْرَ العَمَلِ وَخَيْرَ  الثَّوَابِ وَخَيْرَ الحَيَاةِ وَخيْرَ المَمَاتِ وَثَبِّتْنِي وَثَقِّلْ مَوَازِينِي وَحَقِّقْ إِيمَانِي وَارْفَعْ دَرَجَتِي وَتَقَبَّلْ صَلاَتِي وَاغْفِرْ خَطِيئَاتِي وَأَسْأَلُكَ العُلَا مِنَ الجَنَّةِ ۞
اللَّهُمَّ إِنِّي أَسْأَلُكَ مُوجِبَاتِ رَحْمَتِكَ وَعَزَائِمِ مَغْفِرَتِكَ وَالسَّلاَمَةَ مِنْ كُلِّ إِثْمٍ وَالغَنِيمَةَ مِنْ كُلِّ بِرٍّ وَالفَوْزَ بِالجَنَّةِ وَالنَّجَاةَ مِنَ النَّارِ ۞
اللَّهُمَّ أَحْسِنْ عَاقِبَتَنَا فِي الأُمُورِ كُلِّهَا وَأجِرْنَا مِنْ خِزْيِ الدُّنْيَا وَعَذَابِ الآخِرَةِ ۞
اللَّهُمَّ اقْسِمْ لَنَا مِنْ خَشْيَتِكَ مَاتَحُولُ بِهِ بَيْنَنَا وَبَيْنَ مَعْصِيَتِكَ وَمِنْ طَاعَتِكَ مَاتُبَلِّغُنَا بِهَا جَنَّتَكَ وَمِنَ اليَقِينِ مَاتُهَوِّنُ بِهِ عَلَيْنَا مَصَائِبَ الدُّنْيَا وَمَتِّعْنَا بِأَسْمَاعِنَا وَأَبْصَارِنَا وَقُوَّتِنَا مَاأَحْيَيْتَنَا وَاجْعَلْهُ الوَارِثَ مِنَّا وَاجْعَلْ ثَأْرَنَا عَلَى مَنْ ظَلَمَنَا وَانْصُرْنَا عَلَى مَنْ عَادَانَا وَلاَ تجْعَلْ مُصِيبَتَنَا فِي دِينِنَا وَلاَ تَجْعَلِ الدُّنْيَا أَكْبَرَ هَمِّنَا وَلَا مَبْلَغَ عِلْمِنَا وَلاَ تُسَلِّطْ عَلَيْنَا مَنْ لَا يَرْحَمُنَا ۞
اللَّهُمَّ لَا تَدَعْ لَنَا ذَنْبًا إِلَّا غَفَرْتَهُ وَلَا هَمَّا إِلَّا فَرَّجْتَهُ وَلَا دَيْنًا إِلَّا قَضَيْتَهُ وَلَا حَاجَةً مِنْ حَوَائِجِ الدُّنْيَا وَالآخِرَةِ إِلَّا قَضَيْتَهَا يَاأَرْحَمَ الرَّاحِمِينَ ۞
رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ وَصَلَّى اللهُ عَلَى سَيِّدِنَا وَنَبِيِّنَا مُحَمَّدٍ وَعَلَى آلِهِ وَأَصْحَابِهِ الأَخْيَارِ وَسَلَّمَ تَسْلِيمًا كَثِيراً.
''';

class Swar{
  final  String name;
  final  int num;
  final int type;
  final int page;
  final int lenght;
  Swar({required this.name, required this.num,required this.type,required this.lenght,required this.page});
}

List<Swar>fake=[Swar(name:"fake",num:115,type:2,lenght: 12,page: 610)];

List<Swar> Listed=[
  Swar(name: "الفاتحة", num: 1, type: 0, lenght: 7, page: 1),
  Swar(name: "البقرة", num: 2, type: 1, lenght: 286, page: 2),
  Swar(name: "العمران", num: 3, type: 1, lenght: 200, page: 50),
  Swar(name: "النساء", num: 4, type: 1, lenght: 176, page: 77),
  Swar(name: "المائدة", num: 5, type: 1, lenght: 120, page: 106),
  Swar(name: "الأنعام", num: 6, type: 0, lenght: 165, page: 128),
  Swar(name: "الأعراف", num: 7, type: 0, lenght: 206, page: 151),
  Swar(name: "الأنفال", num: 8, type: 1, lenght: 75, page: 177),
  Swar(name: "التوبة", num: 9, type: 1, lenght: 129, page: 187),
  Swar(name: "يونس", num: 10, type: 0, lenght: 109, page: 208),
  Swar(name: "هود", num: 11, type: 0, lenght: 123, page: 221),
  Swar(name: "يوسف", num: 12, type: 0, lenght: 111, page: 235),
  Swar(name: "الرعد", num: 13, type: 1, lenght: 43, page: 249),
  Swar(name: "إبراهيم", num: 14, type: 0, lenght: 52, page: 255),
  Swar(name: "الحجر", num: 15, type: 0, lenght: 99, page: 262),
  Swar(name: "النحل", num: 16, type: 0, lenght: 128, page: 267),
  Swar(name: "الإسراء", num: 17, type: 0, lenght: 111, page: 282),
  Swar(name: "الكهف", num: 18, type: 0, lenght: 110, page: 293),
  Swar(name: "مريم", num: 19, type: 0, lenght: 98, page: 305),
  Swar(name: "طه", num: 20, type: 0, lenght: 135, page: 312),
  Swar(name: "الأنبياء", num: 21, type: 0, lenght: 112, page: 322),
  Swar(name: "الحج", num: 22, type: 1, lenght: 78, page: 332),
  Swar(name: "المؤمنون", num: 23, type: 0, lenght: 118, page: 342),
  Swar(name: "النور", num: 24, type: 1, lenght: 64, page: 350),
  Swar(name: "الفرقان", num: 25, type: 0, lenght: 77, page: 359),
  Swar(name: "الشعراء", num: 26, type: 0, lenght: 227, page: 367),
  Swar(name: "النمل", num: 27, type: 0, lenght: 93, page: 377),
  Swar(name: "القصص", num: 28, type: 0, lenght: 88, page: 385),
  Swar(name: "العنكبوت", num: 29, type: 0, lenght: 69, page: 396),
  Swar(name: "الروم", num: 30, type: 0, lenght: 60, page: 404),
  Swar(name: "لقمان", num: 31, type: 0, lenght: 34, page: 411),
  Swar(name: "السجدة", num: 32, type: 0, lenght: 30, page: 415),
  Swar(name: "الأحزاب", num: 33, type: 1, lenght: 73, page: 418),
  Swar(name: "سبا", num: 34, type: 0, lenght: 54, page: 428),
  Swar(name: "فاطر", num: 35, type: 0, lenght: 45, page: 434),
  Swar(name: "يس", num: 36, type: 0, lenght: 83, page: 440),
  Swar(name: "الصافات", num: 37, type: 0, lenght: 182, page: 446),
  Swar(name: "ص", num: 38, type: 0, lenght: 88, page: 453),
  Swar(name: "الزمر", num: 39, type: 0, lenght: 75, page: 458),
  Swar(name: "غافر", num: 40, type: 0, lenght: 85, page: 467),
  Swar(name: "فصلت", num: 41, type: 0, lenght: 54, page: 477),
  Swar(name: "الشوري", num: 42, type: 0, lenght: 53, page: 483),
  Swar(name: "الزخرف", num: 43, type: 0, lenght: 89, page: 489),
  Swar(name: "الدخان", num: 44, type: 0, lenght: 59, page: 496),
  Swar(name: "الجاثية", num: 45, type: 0, lenght: 37, page: 499),
  Swar(name: "الأحقاق", num: 46, type: 0, lenght: 35, page: 502),
  Swar(name: "محمد", num: 47, type: 1, lenght: 38, page: 507),
  Swar(name: "الفتح", num: 48, type: 1, lenght: 29, page: 511),
  Swar(name: "الحجرات", num: 49, type: 1, lenght: 18, page: 515),
  Swar(name: "ق", num: 50, type: 0, lenght: 45, page: 518),
  Swar(name: "الذاريات", num: 51, type: 0, lenght: 60, page: 520),
  Swar(name: "الطور", num: 52, type: 0, lenght: 49, page: 523),
  Swar(name: "النجم", num: 53, type: 0, lenght: 62, page: 526),
  Swar(name: "القمر", num: 54, type: 0, lenght: 55, page: 528),
  Swar(name: "الرحمن", num: 55, type: 1, lenght: 78, page: 531),
  Swar(name: "الواقعة", num: 56, type: 0, lenght: 96, page: 534),
  Swar(name: "الحديد", num: 57, type: 1, lenght: 29, page: 537),
  Swar(name: "المجادلة", num: 58, type: 1, lenght: 22, page: 542),
  Swar(name: "الحشر", num: 59, type: 1, lenght: 24, page: 545),
  Swar(name: "الممتحنة", num: 60, type: 1, lenght: 13, page: 549),
  Swar(name: "الصف", num: 61, type: 1, lenght: 14, page: 551),
  Swar(name: "الجمعة", num: 62, type: 1, lenght: 11, page: 553),
  Swar(name: "المنافقون", num: 63, type: 1, lenght: 11, page: 554),
  Swar(name: "التغابن", num: 64, type: 1, lenght: 18, page: 556),
  Swar(name: "الطلاق", num: 65, type: 1, lenght: 12, page: 558),
  Swar(name: "التحريم", num: 66, type: 1, lenght: 12, page: 560),
  Swar(name: "الملك", num: 67, type: 0, lenght: 30, page: 562),
  Swar(name: "القلم", num: 68, type: 0, lenght: 52, page: 564),
  Swar(name: "الحاقة", num: 69, type: 0, lenght: 52, page: 566),
  Swar(name: "المعارج", num: 70, type: 0, lenght: 44, page: 568),
  Swar(name: "نوح", num: 71, type: 0, lenght: 28, page: 570),
  Swar(name: "الجن", num: 72, type: 0, lenght: 28, page: 572),
  Swar(name: "المزمل", num: 73, type: 0, lenght: 20, page: 574),
  Swar(name: "المدثر", num: 74, type: 0, lenght: 56, page: 575),
  Swar(name: "القيامة", num: 75, type: 0, lenght: 40, page: 577),
  Swar(name: "الإنسان", num: 76, type: 1, lenght: 31, page: 578),
  Swar(name: "المرسلات", num: 77, type: 0, lenght: 50, page: 580),
  Swar(name: "النبأ", num: 78, type: 0, lenght: 40, page: 582),
  Swar(name: "النازعات", num: 79, type: 0, lenght: 46, page: 583),
  Swar(name: "عبس", num: 80, type: 0, lenght: 42, page: 585),
  Swar(name: "التكوير", num: 81, type: 0, lenght: 29, page: 586),
  Swar(name: "الإنفطار", num: 82, type: 0, lenght: 19, page: 587),
  Swar(name: "المطففين", num: 83, type: 0, lenght: 36, page: 588),
  Swar(name: "الإنشقاق", num: 84, type: 0, lenght: 25, page: 589),
  Swar(name: "البروج", num: 85, type: 0, lenght: 22, page: 590),
  Swar(name: "الطارق", num: 86, type: 0, lenght: 17, page: 591),
  Swar(name: "الأعلي", num: 87, type: 0, lenght: 19, page: 591),
  Swar(name: "الغاشية", num: 88, type: 0, lenght: 26, page: 592),
  Swar(name: "الفجر", num: 89, type: 0, lenght: 30, page: 593),
  Swar(name: "البلد", num: 90, type: 0, lenght: 20, page: 594),
  Swar(name: "الشمس", num: 91, type: 0, lenght: 15, page: 595),
  Swar(name: "الليل", num: 92, type: 0, lenght: 21, page: 595),
  Swar(name: "الضحي", num: 93, type: 0, lenght: 11, page: 596),
  Swar(name: "الشرح", num: 94, type: 0, lenght: 8, page: 596),
  Swar(name: "التين", num: 95, type: 0, lenght: 8, page: 597),
  Swar(name: "العلق", num: 96, type: 0, lenght: 19, page: 597),
  Swar(name: "القدر", num: 97, type: 0, lenght: 5, page: 598),
  Swar(name: "البينة", num: 98, type: 1, lenght: 8, page: 598),
  Swar(name: "الزلزلة", num: 99, type: 1, lenght: 8, page: 599),
  Swar(name: "العاديات", num: 100, type: 0, lenght: 11, page: 599),
  Swar(name: "القارعة", num: 101, type: 0, lenght: 11, page: 600),
  Swar(name: "التكاثر", num: 102, type: 0, lenght: 8, page: 600),
  Swar(name: "العصر", num: 103, type: 0, lenght: 3, page: 601),
  Swar(name: "الهمزة", num: 104, type: 0, lenght: 9, page: 601),
  Swar(name: "الفيل", num: 105, type: 0, lenght: 5, page: 601),
  Swar(name: "قريش", num: 106, type: 0, lenght: 4, page: 602),
  Swar(name: "الماعون", num: 107, type: 0, lenght: 7, page: 602),
  Swar(name: "الكوثر", num: 108, type: 0, lenght: 3, page: 602),
  Swar(name: "الكافرون", num: 109, type: 0, lenght: 6, page: 603),
  Swar(name: "النصر", num: 110, type: 1, lenght: 3, page: 603),
  Swar(name: "المسد", num: 111, type: 0, lenght: 4, page: 603),
  Swar(name: "الإخلاص", num: 112, type: 0, lenght: 4, page: 604),
  Swar(name: "الفلق", num: 113, type: 0, lenght: 5, page: 604),
  Swar(name: "الناس", num: 114, type: 0, lenght: 6, page: 604),

];
List<Part> Parts=[
  Part(index:1 , start: 1, end:21 ,name: "الاول",swar:"الفاتحة"),
  Part(index: 2, start: 22, end:41,name: "الثاني" ,swar:"البقرة"),
  Part(index: 3, start: 42, end: 61,name: "الثالث" ,swar:"البقرة"),
  Part(index:4 , start: 62, end: 81,name: "الرابع" ,swar:"العمران"),
  Part(index: 5, start: 82, end:101 ,name: "الخامس",swar:"النساء" ),
  Part(index: 6, start: 102, end:121 ,name: "السادس",swar:"النساء" ),
  Part(index: 7, start: 122, end:141 ,name: "السابع",swar:"المائدة" ),
  Part(index: 8, start: 142, end:161 ,name: "الثامن",swar:"الأنعام" ),
  Part(index: 9, start: 162, end:181 ,name: "التاسع",swar:"الأعراف" ),
  Part(index: 10, start:182 , end:201 ,name: "العاشر" ,swar:"الأنفال"),
  Part(index: 11, start:202 , end: 221,name: "الحادي عشر",swar:"التوبة" ),
  Part(index: 12, start:222 , end:241 ,name: "الثاني عشر",swar:"هود" ),
  Part(index: 13, start: 242, end:261 ,name: "الثالث عشر",swar:"يوسف" ),
  Part(index: 14, start: 262, end:281 ,name: "الرابع عشر" ,swar:"الحجر"),
  Part(index: 15, start:282 , end:301 ,name: "الخامس عشر",swar:"الإسراء" ),
  Part(index: 16, start:302 , end: 321,name: "السادس عشر",swar:"الكهف" ),
  Part(index: 17, start:322 , end:341 ,name: "السابع عشر",swar:"الأنبياء" ),
  Part(index: 18, start:342 , end:361 ,name: "الثامن عشر" ,swar:"المؤمنون"),
  Part(index: 19, start: 362, end:381 ,name: "التاسع عشر",swar:"الفرقان" ),
  Part(index: 20, start: 382, end:401 ,name: "العشرين",swar:"النمل" ),
  Part(index: 21, start: 402, end:421 ,name: "الحادي والعشرين",swar:"العنكبوت" ),
  Part(index: 22, start:422 , end:441 ,name: "الثاني والعشرين" ,swar:"الأحزاب"),
  Part(index: 23, start:442 , end:461 ,name: "الثالث والعشرين",swar:"يس" ),
  Part(index: 24, start: 462, end:481 ,name: "الرابع والعشري" ,swar:"الزمر"),
  Part(index: 25, start: 482, end:501 ,name: "الخامس والعشرين" ,swar:"فصلت"),
  Part(index: 26, start: 502, end:521 ,name: "السادس والعشرين" ,swar:"الأحقاق"),
  Part(index: 27, start:522 , end:541 ,name: "السابع والعشرين",swar:"الذاريات" ),
  Part(index: 28, start:542 , end:561 ,name: "الثامن والعشرين",swar:"المجادلة" ),
  Part(index: 29, start: 562, end:581 ,name: "التاسع والعشرين" ,swar:"الملك"),
  Part(index: 30, start:582 , end:604 ,name: "الثلاثون" ,swar:"النبأ"),

  ];


