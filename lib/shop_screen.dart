part of home_page;

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Center(
      child: PageView(controller: controller, children: const [
        MyGridView(1),
        MyGridView(2),
      ]),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView(
    this.index, {
    Key? key,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 25,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            CustomImageContainer(url1),
            CustomImageContainer(url2),
            CustomImageContainer(url3),
            CustomImageContainer(url4),
          ],
        ),
        Center(child: Text('Sayfa $index'))
      ],
    );
  }
}

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer(
    this.url, {
    Key? key,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(url),
      ),
      height: 100,
      width: 100,
    );
  }
}

String url1 =
    "https://www.kizilay.org.tr/Upload/Editor/images/kizilay_yeni_logo.jpg";
String url2 =
    "https://yt3.ggpht.com/ytc/AKedOLTf1lOHxD4_3o-BB8_sTJSR8Gm3a_GOMY_hlRyvTg=s900-c-k-c0x00ffffff-no-rj";
String url3 =
    "https://pbs.twimg.com/profile_images/1266276236508057600/fCHCGZFV_400x400.jpg";
String url4 =
    "https://pbs.twimg.com/profile_images/1313403853639946240/ZHkm8X_u_400x400.jpg";
