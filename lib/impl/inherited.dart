import 'package:flutter/material.dart';

//состояние которое мы пробрасываем
class InheritedCounter extends InheritedWidget {
  final int count;
  final VoidCallback inc;

  InheritedCounter(
      {required this.count, required this.inc, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedCounter oldWidget) {
    return count != oldWidget.count;
  }
}

//это наш корень, вершина, начало приложения в которое мы задаем и меняем
//setstate (состояние) всего приложения
class InheritedCounterImp extends StatefulWidget {
  const InheritedCounterImp({super.key});

  @override
  State<InheritedCounterImp> createState() => _InheritedCounterImpState();
}

class _InheritedCounterImpState extends State<InheritedCounterImp> {
  int count = 0;

  void inc() {
    setState(() {
      count++;
    });
  }

//и оборачиваем это все в InheritedCounter, то самое состояние
  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      count: count,
      inc: inc,
      child: OtherCounterWindow(),
    );
  }
}

//у InheritCounter задаем child - это любое окно при этом дерево
//может быть далеко вниз
class OtherCounterWindow extends StatelessWidget {
  const OtherCounterWindow({super.key});

  @override
  Widget build(BuildContext context) {
    //таким образом вытащим в верх по дереву InheritedCounter с состоянием.
    var counterState =
        context.dependOnInheritedWidgetOfExactType<InheritedCounter>()!;

    return Row(
      children: [
        Text('Inherit Counter ${counterState.count}'),

        // + Provider Counter
        // SizedBox(width: 20),
        // Consumer<CounterModel>(
        //   builder: (context, value, child) =>
        //       Text('Provider Counter ${value.count}'),
        // ),

        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            counterState.inc();
          },
        ),
      ],
    );
  }
}

// context - это информация о всех родительских элементах вверх по дереву.