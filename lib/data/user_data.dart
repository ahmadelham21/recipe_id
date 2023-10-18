import 'package:faker/faker.dart';
import 'package:recipe_id/models/user_models.dart';

final faker = Faker();

List<User> dummyUsers = List.generate(
  10, // Jumlah pengguna yang diinginkan
  (index) => User(
    username: faker.person.name(),
    foto: faker.image.image(),
  ),
);
