class TransferMoney {
  final SmsService _smsService = SmsService();
  final TrasactionDB _trasactionDB = TrasactionDB();
  void transferLocal() {
    //implementation
    _smsService.sendMessage();
    _trasactionDB.saveTransaction();
  }
}

class SmsService {
  void sendMessage() {
    //implementation
  }
}

class TrasactionDB {
  void saveTransaction() {
    //implementation
  }
}
