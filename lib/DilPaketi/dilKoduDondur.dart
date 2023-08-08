dilKoduDondur(String language) {
  switch (language) {
    case 'ing':
      return 'en';
    case 'German':
      return 'alm';
    case 'French':
      return 'frn';
    case 'Spanish':
      return 'isp';
    case 'Italian':
      return 'it';
    case 'Turkish':
      return 'tr';
    case 'Chinese':
      return 'cin';
    case 'Japanese':
      return 'ja';
    case 'Russian':
      return 'ru';
    case 'Swedish':
      return 'isv';
    case 'Arabic':
      return 'ar';
    default:
      return 'ing';
  }
}