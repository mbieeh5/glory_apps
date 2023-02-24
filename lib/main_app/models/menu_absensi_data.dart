class MenuAbsensiData {
  MenuAbsensiData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.ket,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? ket;
  int kacl;

  static List<MenuAbsensiData> tabIconsList = <MenuAbsensiData>[
    MenuAbsensiData(
      imagePath: 'assets/images/camera.png',
      titleTxt: 'Absensi',
      ket: <String>['Jangan lupa', 'Absen di sini', 'Guys'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MenuAbsensiData(
      imagePath: 'assets/images/data_absensi.png',
      titleTxt: 'DataAbsen',
      ket: <String>['Data Absen', 'yang masuk'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MenuAbsensiData(
      imagePath: 'assets/images/leaderboard.png',
      titleTxt: 'Leaderboard',
      ket: <String>['Cek Leaderboard'],
      startColor: '#FFE214',
      endColor: '#FFA808',
    ),
    MenuAbsensiData(
      imagePath: 'assets/images/jadwal.png',
      titleTxt: 'Jadwal',
      ket: <String>['Cek Libur', 'Dan Cuti'],
      startColor: '#083352',
      endColor: '#286DA5',
    ),
  ];
}
