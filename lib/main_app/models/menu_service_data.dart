class MenuServiceData {
  MenuServiceData({
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

  static List<MenuServiceData> tabIconsList = <MenuServiceData>[
    MenuServiceData(
      imagePath: 'assets/images/input.png',
      titleTxt: 'Input',
      kacl: 5,
      meals: <String>['Jangan lupa', 'input service', 'cuan Guys'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MenuServiceData(
      imagePath: 'assets/images/data.png',
      titleTxt: 'DataService',
      kacl: 200,
      meals: <String>['Data Service', 'yang masuk'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
  ];
}
