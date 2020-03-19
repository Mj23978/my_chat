import 'package:encrypt/encrypt.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_chat/network/encryption/key.dart';
import 'package:my_chat/network/encryption/x25519.dart';
import 'package:my_chat/providers/chat_provider.dart';

import '../../utils/chat_utils.dart';
import '../../utils/strings.dart';
import 'crc.dart';

class E2EEncryption {
  Encrypter cryptor;
  BaseChatProvider chatProvider;
  final iv = IV.fromLength(8);

  FlutterSecureStorage storage = new FlutterSecureStorage();

  init() async {
    String privateKey = await storage.read(key: PRIVATE_KEY);
    print(privateKey);
    final sharedSecret = (await X25519().calculateSharedSecret(
            EncryptionKey.fromBase64(privateKey, false),
            EncryptionKey.fromBase64(
                chatProvider.userData[chatProvider.peerNumber][PUBLIC_KEY],
                true)))
        .toBase64();
    final key = Key.fromBase64(sharedSecret);
    cryptor = Encrypter(Salsa20(key));
  }

  E2EEncryption({
    this.chatProvider,
  }) {
    init();
    print("Hello");
  }

  dynamic encryptWithCRC(String input) {
    try {
      String encrypted = cryptor.encrypt(input, iv: iv).base64;
      int crc = CRC32.compute(input);
      return '$encrypted$CRC_SEPARATOR$crc';
    } catch (e) {
      ChatUtils.toast('Waiting for your peer to join the chat.');
      return false;
    }
  }

  String decryptWithCRC(String input) {
    try {
      if (input.contains(CRC_SEPARATOR)) {
        int idx = input.lastIndexOf(CRC_SEPARATOR);
        String msgPart = input.substring(0, idx);
        String crcPart = input.substring(idx + 1);
        int crc = int.tryParse(crcPart);
        if (crc != null) {
          msgPart = cryptor.decrypt(Encrypted.fromBase64(msgPart), iv: iv);
          if (CRC32.compute(msgPart) == crc) return msgPart;
        }
      }
    } on FormatException {
      return '';
    }
    return '';
  }
}
