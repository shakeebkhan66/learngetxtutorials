
class AppExceptions implements Exception {

  final message;
  final prefix;

  AppExceptions([this.message, this.prefix]);

  String toString(){
    return "$prefix and $message";
  }

}


class InternetException extends AppExceptions{

  InternetException([String? message]) : super(message, "No Internet");
}


class RequestTimeout extends AppExceptions{
  RequestTimeout([String? message]) : super(message, "Request Timeout");
}

class ServerException extends AppExceptions{
  ServerException([String? message]) : super(message, "Internal Server Error");
}