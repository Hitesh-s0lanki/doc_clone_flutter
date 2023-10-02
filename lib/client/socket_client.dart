import 'package:doc_clone_flutter/constants.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketCLient {
  io.Socket? socket;
  static SocketCLient? _instance;

  SocketCLient._internal() {
    socket = io.io(host, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
  }

  static SocketCLient get instance {
    _instance ??= SocketCLient._internal();
    return _instance!;
  }
}
