String? translates(String ceviriYapilacakDil, String kelime) {
  return dil[ceviriYapilacakDil]?[kelime];
}

Map<String, Map<String, String>> dil = {
  'ing': {
    'Sarı': 'Yellow',
    'Mavi': 'Blue',
    'Yeşil': 'Green',
    'Kırmızı': 'Red',
    'Siyah': 'Black',
    'Kedi': 'Cat',
    'At': 'Horse',
    'Kuş': 'Bird',
    'Köpek': 'Dog',
    'Balık': 'Fish',
    'Su': 'Water',
    'Çay': 'Tea',
    'Süt': 'Milk',
    'Kahve': 'Coffee',
    'Bira': 'Beer',
    'Norveçli': 'Norwegian',
    'Danimarkalı': 'Danish',
    'İngiliz': 'English',
    'Alman': 'German',
    'İsveçli': 'Swedish',
  },
  'alm': {
    'Sarı': 'Gelb',
    'Mavi': 'Blau',
    'Yeşil': 'Grün',
    'Kırmızı': 'Rot',
    'Siyah': 'Schwarz',
    'Kedi': 'Katze',
    'At': 'Pferd',
    'Kuş': 'Vogel',
    'Köpek': 'Hund',
    'Balık': 'Fisch',
    'Su': 'Wasser',
    'Çay': 'Tee',
    'Süt': 'Milch',
    'Kahve': 'Kaffee',
    'Bira': 'Bier',
    'Norveçli': 'Norwegisch',
    'Danimarkalı': 'Dänisch',
    'İngiliz': 'Englisch',
    'Alman': 'Deutsch',
    'İsveçli': 'Schwedisch',
  },
  'frn': {
    'Sarı': 'Gelb',
    'Mavi': 'Bleu',
    'Yeşil': 'Vert',
    'Kırmızı': 'Rouge',
    'Siyah': 'Noir',
    'Kedi': 'Chat',
    'At': 'Cheval',
    'Kuş': 'Oiseau',
    'Köpek': 'Chien',
    'Balık': 'Poisson',
    'Su': 'Ce',
    'Çay': 'Thé',
    'Süt': 'Lait',
    'Kahve': 'Café',
    'Bira': 'Bière',
    'Norveçli': 'Norvégien',
    'Danimarkalı': 'Danois',
    'İngiliz': 'Anglais',
    'Alman': 'Allemand',
    'İsveçli': 'Suédois',
  },
  'cin': {
    'Sarı': '黄色 (huángsè)',
    'Mavi': '蓝色 (lánsè)',
    'Yeşil': '绿色 (lǜsè)',
    'Kırmızı': '红色 (hóngsè)',
    'Siyah': '白色 (báisè)',
    'Kedi': '猫 (māo)',
    'At': '马 (mǎ)',
    'Kuş': '鸟 (niǎo)',
    'Köpek': '狗 (gǒu)',
    'Balık': '鱼 (yú)',
    'Su': '水 (shuǐ)',
    'Çay': '茶 (chá)',
    'Süt': '牛奶 (niúnǎi)',
    'Kahve': '咖啡 (kāfēi)',
    'Bira': '啤酒 (píjiǔ)',
    'Norveçli': '挪威人 (nuówēi rén)',
    'Danimarkalı': '丹麦人 (dānmài rén)',
    'İngiliz': '英国人 (yīngguó rén)',
    'Alman': '德国人 (déguó rén)',
    'İsveçli': '瑞典人 (ruìdiǎn rén)',
  },
  'isp': {
    'Sarı': 'Amarillo',
    'Mavi': 'Azul',
    'Yeşil': 'Verde',
    'Kırmızı': 'Rojo',
    'Siyah': 'Negro',
    'Kedi': 'Gato',
    'At': 'Caballo',
    'Kuş': 'Pájaro',
    'Köpek': 'Perro',
    'Balık': 'Pez',
    'Su': 'Este',
    'Çay': 'Té',
    'Süt': 'Leche',
    'Kahve': 'Café',
    'Bira': 'Cerveza',
    'Norveçli': 'Noruego',
    'Danimarkalı': 'Danés',
    'İngiliz': 'Inglés',
    'Alman': 'Alemán',
    'İsveçli': 'Sueco',
  },
  'ru': {
    'Sarı': 'Желтый',
    'Mavi': 'Синий',
    'Yeşil': 'Зеленый',
    'Kırmızı': 'Красный',
    'Siyah': 'Черный',
    'Kedi': 'Кот',
    'At': 'Лошадь',
    'Kuş': 'Птица',
    'Köpek': 'Собака',
    'Balık': 'Рыба',
    'Su': 'Вода',
    'Çay': 'Чай',
    'Süt': 'Молоко',
    'Kahve': 'Кофе',
    'Bira': 'Пиво',
    'Norveçli': 'Норвежец',
    'Danimarkalı': 'Датчанин',
    'İngiliz': 'Англичанин',
    'Alman': 'Немец',
    'İsveçli': 'Швед',
  },
  'it': {
    'Sarı': 'Giallo',
    'Mavi': 'Blu',
    'Yeşil': 'Verde',
    'Kırmızı': 'Rosso',
    'Siyah': 'Nero',
    'Kedi': 'Gatto',
    'At': 'Cavallo',
    'Kuş': 'Uccello',
    'Köpek': 'Cane',
    'Balık': 'Pesce',
    'Su': 'Acqua',
    'Çay': 'Tè',
    'Süt': 'Latte',
    'Kahve': 'Caffè',
    'Bira': 'Birra',
    'Norveçli': 'Norvegese',
    'Danimarkalı': 'Danese',
    'İngiliz': 'Inglese',
    'Alman': 'Tedesco',
    'İsveçli': 'Svedese',
  },
  'ja': {
    'Sarı': '黄色い (kiiroi)',
    'Mavi': '青い (aoi)',
    'Yeşil': '緑 (midori)',
    'Kırmızı': '赤い (akai)',
    'Siyah': '白い (shiroi)',
    'Kedi': '猫 (neko)',
    'At': '馬 (uma)',
    'Kuş': '鳥 (tori)',
    'Köpek': '犬 (inu)',
    'Balık': '魚 (sakana)',
    'Su': '水 (mizu)',
    'Çay': '茶 (cha)',
    'Süt': '牛乳 (gyuunyuu)',
    'Kahve': 'コーヒー (koohii)',
    'Bira': 'ビール (biiru)',
    'Norveçli': 'ノルウェー人 (Noruuējin)',
    'Danimarkalı': 'デンマーク人 (Denmaaku-jin)',
    'İngiliz': 'イギリス人 (igirisu-jin)',
    'Alman': 'ドイツ人 (doitsu-jin)',
    'İsveçli': 'スウェーデン人 (suweeden-jin)',
  },
  'tr': {
    'Sarı': 'Sarı',
    'Mavi': 'Mavi',
    'Yeşil': 'Yeşil',
    'Kırmızı': 'Kırmızı',
    'Siyah': 'Siyah',
    'Kedi': 'Kedi',
    'At': 'At',
    'Kuş': 'Kuş',
    'Köpek': 'Köpek',
    'Balık': 'Balık',
    'Su': 'Su',
    'Çay': 'Çay',
    'Süt': 'Süt',
    'Kahve': 'Kahve',
    'Bira': 'Bira',
    'Norveçli': 'Norveçli',
    'Danimarkalı': 'Danimarkalı',
    'İngiliz': 'İngiliz',
    'Alman': 'Alman',
    'İsveçli': 'İsveçli',
  },
  'isv': {
    'Sarı': 'Gul',
    'Mavi': 'Blå',
    'Yeşil': 'Grön',
    'Kırmızı': 'Röd',
    'Siyah': 'Svart',
    'Kedi': 'Katt',
    'At': 'Häst',
    'Kuş': 'Fågel',
    'Köpek': 'Hund',
    'Balık': 'Fisk',
    'Su': 'Vatten',
    'Çay': 'Té',
    'Süt': 'Mjölk',
    'Kahve': 'Kaffe',
    'Bira': 'Öl',
    'Norveçli': 'Norsk',
    'Danimarkalı': 'Dansk',
    'İngiliz': 'Engelsk',
    'Alman': 'Tysk',
    'İsveçli': 'Svensk',
  },
  'ar': {
    'Sarı': 'أصفر',
    'Mavi': 'أزرق',
    'Yeşil': 'أخضر',
    'Kırmızı': 'أحمر',
    'Siyah': 'أبيض',
    'Kedi': 'قط',
    'At': 'حصان',
    'Kuş': 'طائر',
    'Köpek': 'كلب',
    'Balık': 'سمك',
    'Su': 'ماء',
    'Çay': 'شاي',
    'Süt': 'حليب',
    'Kahve': 'قهوة',
    'Bira': 'بيرة',
    'Norveçli': 'النرويجي',
    'Danimarkalı': 'الدنماركي',
    'İngiliz': 'إنجليزي',
    'Alman': 'ألماني',
    'İsveçli': 'السويدي',
  },
};

List<String> ipucu = [
  'İngiliz kırmızı evde oturuyor.',
  'İsveçlinin köpeği var.',
  'Danimarkalı çay içiyor.',
  'Yeşil ev tam siyah evin solunda duruyor.',
  'Yeşil evin sahibi kahve içmeyi seviyor.',
  'Palmall sigarası içenin bir kuşu var.',
  'Ortadaki evde oturan süt içmeyi seviyor.',
  'Sarı evde oturan Dunhill sigarası içiyor.',
  'Norveçli birinci evde oturuyor.',
  'Marlboro içen, kedisi olanın yanındaki evde oturuyor.',
  'Atı olan insan, Dunhill sigarası içenin yanındaki evde oturuyor.',
  'Winfield sigarası içen, birayı seviyor.',
  'Mavi evin yanında Norveçli oturuyor.',
  'Alman Price sigarası içiyor.',
  'Marlboro içenin komşusu su içiyor. ',
];

