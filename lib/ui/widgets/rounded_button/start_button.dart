part of '../../pages/home/home.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  RoundedButton({
    required this.title,
    required this.onPressed,
  });

  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide.none,
          backgroundColor: Color(0xFF39AFEA),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
