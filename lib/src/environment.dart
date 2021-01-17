import 'package:dotenv/dotenv.dart' show load, env;

class Environment {
  // Mongo
  String get _dbUser => env['MONGO_ROOT_USERNAME'];
  String get _dbPassword => env['MONGO_ROOT_PASSWORD'];
  String get _dbPort => env['MONGO_PORT'];
  String get _dbHost => env['MONGO_HOST'];
  String get _dbName => env['MONGO_DB'];
  //mongodb://admin:password@localhost:27017
  String get dbURL =>
      'mongodb://$_dbUser:$_dbPassword@$_dbHost:$_dbPort/$_dbName';

  int get port => int.tryParse(env['ENV_PORT'] ?? '') ?? 8080;

  Environment({String fileName = '.env'}) {
    load(fileName);
  }

  // Validate
}
