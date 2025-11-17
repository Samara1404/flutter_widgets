import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_textstyles.dart';
import 'package:flutter_widgets/features/auth/presentation/widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Салам!\nКош келдиниз', style: AppTextstyles.title),
                SizedBox(height: 10),

                CustomContainer(
                  iconPath: 'assets/icons/icon1.png',
                  title: 'Жарнама түзүңүз!',
                  subtitle:
                      'Эгер бир нерсени таап же жоготкон \nболсоңуз кабарлаңыз.',
                ),
                SizedBox(height: 8),

                CustomContainer(
                  iconPath: 'assets/icons/icon2.png',
                  title: 'Жоголгон жана табылган  \nбуюмдар',
                  subtitle:
                      'Жоголгон жана табылган нерселерди карап \nчыгыңыз.',
                ),
                SizedBox(height: 8),

                CustomContainer(
                  iconPath: 'assets/icons/icon2.png',
                  title: 'Картадан издөө',
                  subtitle: 'Жоголгон буюмдарды картадан издениз.',
                ),
                 SizedBox(height: 8),

                CustomContainer(
                  iconPath: 'assets/icons/icon2.png',
                  title: 'Картадан издөө',
                  subtitle: 'Жоголгон буюмдарды картадан издениз.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
