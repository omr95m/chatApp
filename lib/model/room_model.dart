class ChatRoomD {
  String? id;
  List? members;
  String? lastMessage;
  String? lastMessageTime;

  String? createdAt;

  ChatRoomD({
    required this.id,
    required this.createdAt,
    required this.members,
    required this.lastMessage,
    required this.lastMessageTime,
  });
  factory ChatRoomD.fromJson(Map<String, dynamic> json) {
    return ChatRoomD(
      id: json['id'] ?? '',
      members: json['members'],
      createdAt: json['created_At'],
      lastMessage: json['last_message'],
      lastMessageTime: json['last_message_time'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_At': createdAt,
      'members': members,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
    };
  }
}
