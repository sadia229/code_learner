import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInformationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onTap;

  const UserInformationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
        top: 0,
        bottom: 0,
      ),
      minVerticalPadding: 0,
      minLeadingWidth: 0,
      leading: Icon(
        icon,
        color: Colors.black.withOpacity(0.5),
        size: 20,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.ubuntu().fontFamily,
              color: Colors.black.withOpacity(0.6),
            ),
      ),
      trailing: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.ubuntu().fontFamily,
              color: Colors.black.withOpacity(0.6),
            ),
      ),
    );
  }
}
