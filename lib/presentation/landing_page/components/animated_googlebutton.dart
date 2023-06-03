import 'package:waran/screens.dart';

class InsideButton extends StatefulWidget {
  const InsideButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InsideButtonState createState() => _InsideButtonState();
}

class _InsideButtonState extends State<InsideButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    _animationController.forward().then((_) {
      _animationController.reverse();
      // Perform actions on button press here
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _animationController.forward();
      },
      onTapUp: (_) {
        _animationController.reverse();
        _onButtonPressed();
      },
      onTapCancel: () {
        _animationController.reverse();
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: child,
          );
        },
        child: Container(
          width: Get.width,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text(
              'Go Inside',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
