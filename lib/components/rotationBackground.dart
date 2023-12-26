import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RotationBackgroundViewModel extends BaseViewModel {
  late AnimationController controller;
  late Animation<double> animation;

  RotationBackgroundViewModel(TickerProvider vsync) {
    // Inicialização do controlador e animação
    controller = AnimationController(
      vsync: vsync,
      duration: Duration(seconds: 10),
    );

    animation = Tween<double>(begin: 0.0, end: 360.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.linear,
      ),
    );

    // Adicione um listener para reiniciar a animação quando atingir o final
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reset();
        controller.forward();
      }
    });

    // Inicie a animação
    controller.forward();
  }

  @override
  void dispose() {
    // Dispose do controlador quando o ViewModel é descartado
    controller.dispose();
    super.dispose();
  }
}

class RotationBackground extends StatelessWidget {
  final TickerProvider vsync;

  RotationBackground({required this.vsync});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RotationBackgroundViewModel>.reactive(
      viewModelBuilder: () => RotationBackgroundViewModel(vsync),
      disposeViewModel: false, // Não descarte o ViewModel quando o widget for removido
      builder: (context, model, child) {
        return RotationTransition(
          turns: model.animation,
          child: Center(
            child: Image.asset("assets/page1/background_name.png"),
          ),
        );
      },
    );
  }
}
