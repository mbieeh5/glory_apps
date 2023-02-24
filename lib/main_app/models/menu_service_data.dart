class MenuServiceData {
  MenuServiceData({
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

  static List<MenuServiceData> tabIconsList = <MenuServiceData>[
    MenuServiceData(
      imagePath: 'assets/images/input.png',
      titleTxt: 'Input',
      ket: <String>['Jangan lupa', 'input service', 'cuan Guys'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MenuServiceData(
      imagePath: 'assets/images/data.png',
      titleTxt: 'DataService',
      ket: <String>['Data Service', 'yang masuk'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MenuServiceData(
      imagePath: 'assets/images/admin_only.png',
      titleTxt: 'AdminOnly',
      ket: <String>['Khusus Admin'],
      startColor: '#555555',
      endColor: '#3D3D3D',
    ),
  ];
}
