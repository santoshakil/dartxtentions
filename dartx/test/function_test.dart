import 'package:test/test.dart';
import 'package:dartx/dartx.dart';

void main() {
  group('Function', () {
    group('Function0X', () {
      final func = () => 5;

      test('.invoke', () {
        expect(func.invoke(), 5);
      });
    });

    group('Function1X', () {
      final func = (String s) => s;

      test('.invoke()', () {
        expect(func.invoke('test'), 'test');
      });

      test('.partial()', () {
        var p = func.partial('p');
        expect(p(), 'p');
      });
    });

    group('Function2X', () {
      final func = (String s1, String s2) => '$s1,$s2';

      test('.invoke()', () {
        expect(func.invoke('test1', 'test2'), 'test1,test2');
      });

      test('.partial()', () {
        var p = func.partial('p');
        expect(p('test'), 'p,test');
      });

      test('.partial2()', () {
        var p = func.partial2('p1', 'p2');
        expect(p(), 'p1,p2');
      });

      test('.flip()', () {
        var flipped = func.flip();
        expect(flipped('test1', 'test2'), 'test2,test1');
      });
    });

    group('Function3X', () {
      final func = (String s1, String s2, String s3) => '$s1,$s2,$s3';

      test('.invoke()', () {
        expect(func.invoke('t1', 't2', 't3'), 't1,t2,t3');
      });

      test('.partial()', () {
        var p = func.partial('p');
        expect(p('t1', 't2'), 'p,t1,t2');
      });

      test('.partial2()', () {
        var p = func.partial2('p1', 'p2');
        expect(p('t'), 'p1,p2,t');
      });

      test('.partial3()', () {
        var p = func.partial3('p1', 'p2', 'p3');
        expect(p(), 'p1,p2,p3');
      });
    });

    group('Function4X', () {
      final func =
          (String s1, String s2, String s3, String s4) => '$s1,$s2,$s3,$s4';

      test('.invoke()', () {
        expect(func.invoke('t1', 't2', 't3', 't4'), 't1,t2,t3,t4');
      });

      test('.partial()', () {
        var p = func.partial('p');
        expect(p('t1', 't2', 't3'), 'p,t1,t2,t3');
      });

      test('.partial2()', () {
        var p = func.partial2('p1', 'p2');
        expect(p('t1', 't2'), 'p1,p2,t1,t2');
      });

      test('.partial3()', () {
        var p = func.partial3('p1', 'p2', 'p3');
        expect(p('t'), 'p1,p2,p3,t');
      });

      test('.partial4()', () {
        var p = func.partial4('p1', 'p2', 'p3', 'p4');
        expect(p(), 'p1,p2,p3,p4');
      });
    });
  });
}