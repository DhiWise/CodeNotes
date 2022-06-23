import 'package:zaiynab_s_application1/core/app_export.dart';
import 'package:zaiynab_s_application1/data/apiClient/api_client.dart';
import 'package:supabase/supabase.dart';

class InitialBindings extends Bindings {
  var supabaseUrl = 'https://eaqghyjviicmpvrrkefh.supabase.co';

  var supabasePublicKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVhcWdoeWp2aWljbXB2cnJrZWZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTU5NjkyMzgsImV4cCI6MTk3MTU0NTIzOH0.N550k5pIBLv8OEsjnJ_0hw-Qe-nBteKL2eSiQG0Nfqc';

  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    var supabaseClient = SupabaseClient(supabaseUrl, supabasePublicKey);
    Get.put(supabaseClient);
  }
}
