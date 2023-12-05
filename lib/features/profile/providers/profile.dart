import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rmpl_hrm/features/app/providers/app_providers.dart';
import 'package:rmpl_hrm/features/auth/providers/auth.dart';
import 'package:rmpl_hrm/features/profile/models/employee.dart';

part 'profile.g.dart';

@riverpod
Stream<Employee?> profile(ProfileRef ref) {
  return ref
      .watch(
        firestoreProvider,
      )
      .collection('employees')
      .doc(ref.watch(authProvider).user.id)
      .snapshots()
      .map(
        (doc) => Employee.fromJson(
          doc.data()!,
        ),
      );
}