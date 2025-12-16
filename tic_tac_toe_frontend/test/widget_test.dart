import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Tic Tac Toe app renders basic UI elements', (tester) async {
    await tester.pumpWidget(const MyApp());

    // App loads with title
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Mode selector exists
    expect(find.text('Player vs Player'), findsOneWidget);
    expect(find.text('Player vs AI'), findsOneWidget);

    // Turn indicator should mention "Turn:" initially
    expect(find.textContaining('Turn:'), findsOneWidget);
  });
}
