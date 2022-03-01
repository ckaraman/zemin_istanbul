part of home_page;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _mailControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Profil Sayfası',
            style: Theme.of(context).textTheme.headline4,
          ),
          CustomTextWidget(
            text: 'İsim',
            controller: _nameController,
          ),
          CustomTextWidget(
            text: 'Soyisim',
            controller: _surnameController,
          ),
          CustomTextWidget(
            text: 'Mail',
            controller: _mailControllers,
          ),
          ElevatedButton(onPressed: onPressed, child: const Text('Güncelle')),
          const Card(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text('Bakiye 50 ₺')),
          )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _mailControllers.dispose();
    super.dispose();
  }

  void onPressed() {
    debugPrint(_nameController.text);
    debugPrint(_surnameController.text);
    debugPrint(_mailControllers.text);
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    Key? key,
    required this.controller,
    required this.text,
  }) : super(key: key);
  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
              border: const OutlineInputBorder(), label: Text(text)),
        ),
        const Divider(
          color: Colors.transparent,
        ),
      ],
    );
  }
}
