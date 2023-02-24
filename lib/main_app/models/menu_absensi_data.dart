class MenuAbsensiData {
  MenuAbsensiData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MenuAbsensiData> tabIconsList = <MenuAbsensiData>[
    MenuAbsensiData(
      imagePath: 'assets/images/input.png',
      titleTxt: 'Absensi',
      kacl: 5,
      meals: <String>['Jangan lupa', 'Absen di sini', 'Guys'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MenuAbsensiData(
      imagePath: 'assets/images/data.png',
      titleTxt: 'DataAbsen',
      kacl: 200,
      meals: <String>['Data Absen', 'yang masuk'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MenuAbsensiData(
      imagePath: 'assets/images/data.png',
      titleTxt: 'Leaderboard',
      kacl: 200,
      meals: <String>['Cek Leaderboard', 'kalian urutan', 'keberapa yaaa'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
  ];
}
