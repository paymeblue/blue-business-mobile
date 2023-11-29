class BlueMessage {
  final int? id;
  final String messageId;
  final String senderId;
  final String receiverId;
  final String message;
  final DateTime timeStamp;
  final int sendStatus;

  BlueMessage({
    this.id,
    this.messageId = "",
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.timeStamp,
    this.sendStatus = 2,
  });

  factory BlueMessage.fromMap(json) => BlueMessage(
      id: json["id"],
      messageId: json["messageId"],
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      message: json['message'] ?? '',
      timeStamp: DateTime.parse(json['timeStamp']),
      sendStatus: json['sendStatus']);

  Map<String, dynamic> toMap() => {
        'messageId': messageId,
        'senderId': senderId,
        'message': message,
        'receiverId': receiverId,
        'timeStamp': timeStamp.toIso8601String(),
        'sendStatus': sendStatus
      };

  Map<String, dynamic> toFirebaseMap() => {
        'id': id,
        'senderId': senderId,
        'message': message,
        'receiverId': receiverId,
        'timeStamp': timeStamp,
      };
}

class Chat {
  final int? id;
  final String peerId;
  final String peerfirstName;
  final String peerlastName;
  final String senderName;
  final String receiverToken;
  final String lastMessage;
  final String avatarUrl;
  final String timeStamp;
  final String peerFcmToken;
  final bool peerNotification;

  Chat({
    this.id,
    required this.peerId,
    required this.peerfirstName,
    required this.peerlastName,
    required this.lastMessage,
    required this.avatarUrl,
    required this.timeStamp,
    required this.senderName,
    required this.receiverToken,
    required this.peerFcmToken,
    required this.peerNotification,
  });

  String getInitials() {
    if (peerlastName != " ") {
      return "${peerfirstName[0].toUpperCase()}${peerlastName[0].toUpperCase()}";
    } else {
      return "N/A";
    }
  }

  factory Chat.fromMap(json) => Chat(
      id: json["id"],
      peerId: json["peerId"],
      peerfirstName: json["firstName"],
      peerlastName: json["lastName"],
      lastMessage: json["lastMessage"],
      avatarUrl: json["avatarUrl"],
      peerFcmToken: json['peerToken'],
      senderName: json["senderName"],
      receiverToken: json["receiverToken"],
      timeStamp: json["timeStamp"],
      peerNotification: json["peerNotification"] == 1);

  Map<String, dynamic> toMap() => {
        "id": id,
        "lastMessage": lastMessage,
        "peerId": peerId,
        "avatarUrl": avatarUrl,
        "firstName": peerfirstName,
        "lastName": peerlastName,
        "peerToken": peerFcmToken,
        "senderName": senderName,
        "receiverToken": receiverToken,
        "timeStamp": timeStamp,
        "peerNotification": peerNotification ? 1 : 0,
      };

  Map<String, dynamic> toFirebaseMap() => {
        "lastMessage": lastMessage,
        "avatarUrl": avatarUrl,
        "firstName": peerfirstName,
        "lastName": peerlastName,
        "receiverToken": receiverToken,
        "senderName": senderName,
        "peerToken": peerFcmToken,
        "timeStamp": timeStamp,
        "peerNotification": peerNotification,
      };
}
