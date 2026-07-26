import 'package:flutter/material.dart';
import 'package:flutter_course/core/design/colors.dart';
import 'package:flutter_course/features/home/presentation/widgets/container_header_icon.dart';

class HomeAppBarTitle extends StatelessWidget {
  final String userName;
  const HomeAppBarTitle({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 12),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  userName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              ContainerHeaderIcon(
                configMargin: const EdgeInsets.only(right: 12),
                iconButton: IconButton(
                  onPressed: () => print('Presionaron icono notificaciones'),
                  icon: Icon(
                    Icons.notifications,
                    color: MyColors.brandPrimaryColor,
                  ),
                ),
              ),
              ContainerHeaderIcon(
                iconButton: IconButton(
                  onPressed: () => print('Presionaron icono more'),
                  icon: Icon(
                    Icons.more_vert,
                    color: MyColors.brandPrimaryColor,
                  ),
                ),
              ),
            ],
          );
  }
}