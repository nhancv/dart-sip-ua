import 'events.dart';
import '../transports/websocket_interface.dart';

class EventSocketConnected extends EventType {
  WebSocketInterface socket;
  EventSocketConnected({this.socket});

  @override
  String toString() {
    return 'EventSocketConnected{socket: $socket}';
  }
}

class EventSocketConnecting extends EventType {
  WebSocketInterface socket;
  EventSocketConnecting({this.socket});

  @override
  String toString() {
    return 'EventSocketConnected{socket: $socket}';
  }
}

class EventSocketDisconnected extends EventType {
  WebSocketInterface socket;
  ErrorCause cause;
  EventSocketDisconnected({WebSocketInterface socket, this.cause});

  @override
  String toString() {
    return 'EventSocketDisconnected{socket: $socket, cause: $cause}';
  }
}
