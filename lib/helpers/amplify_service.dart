//import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
//import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
//import 'package:friends_trip_app/models/ModelProvider.dart';
//import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

import '../amplifyconfiguration.dart';

class AmplifyService {
  static configureAmplify() async {
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();

    // AmplifyDataStore datastorePlugin =
    //     AmplifyDataStore(modelProvider: ModelProvider.instance);

    Amplify.addPlugins([
      authPlugin,
      //datastorePlugin,
      //AmplifyAPI(),
      //AmplifyAnalyticsPinpoint(),
    ]);

    try {
      await Amplify.configure(amplifyconfig);
      print('Amplify Configured');
    } catch (e) {
      print("Tried to reconfigure Amplify");
    }
  }
}
