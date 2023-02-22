import 'package:flutter/material.dart';
import 'package:stock_manager/Ui/Generics/browse_image.dart';
import 'package:stock_manager/Ui/Themes/constants.dart';
import 'package:stock_manager/Ui/Themes/resources.dart';

class DeveloperContacts extends StatelessWidget {
  const DeveloperContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Idir Yacine" , style: theme.textTheme.displaySmall,),
        Text("idiryacinesp@gmail.com" , style: theme.textTheme.displaySmall,),
        const SizedBox(height: Measures.large,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
          _LogoLink(label: 'IDIRYACINE', iconPath: AppRessources.githubIcon),
          _LogoLink(label: 'IDIRYACINE', iconPath: AppRessources.facebookIcon),
          _LogoLink(label: '+213540675611', iconPath: AppRessources.phoneIcon),

        ],)
      ]),
    );
  }
}

class _LogoLink extends StatelessWidget{
  final String label;
  final String iconPath;

  const _LogoLink({Key? key, required this.label, required this.iconPath, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      FaultToleratedImage(imageUrl: iconPath),
      Text(label,style: Theme.of(context).textTheme.bodySmall,)
    ],);
  }
}
