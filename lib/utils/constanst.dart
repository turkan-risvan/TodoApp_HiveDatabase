import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

///
import '../utils/strings.dart';
import '../../main.dart';


emptyFieldsWarning(context) {
  return FToast.toast(
    context,
    msg: MyString.oopsMsg,
    subMsg: "Tüm Alanları doldurmalısınız!",
    corner: 20.0,
    duration: 2000,
    padding: const EdgeInsets.all(20),
  );
}


nothingEnterOnUpdateTaskMode(context) {
  return FToast.toast(
    context,
    msg: MyString.oopsMsg,
    subMsg: "Görevleri düzenlemeli ve ardından güncellemeyi denemelisiniz!",
    corner: 20.0,
    duration: 3000,
    padding: const EdgeInsets.all(20),
  );
}


dynamic warningNoTask(BuildContext context) {
  return PanaraInfoDialog.showAnimatedGrow(
    context,
    title: MyString.oopsMsg,
    message:
        "Silinecek Görev Yok!\n Biraz eklemeyi ve ardından silmeyi deneyin!",
    buttonText: "Tamam",
    onTapDismiss: () {
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.warning,
  );
}


dynamic deleteAllTask(BuildContext context) {
  return PanaraConfirmDialog.show(
    context,
    title: MyString.areYouSure,
    message:
        "Gerçekten tüm görevleri silmek istiyor musunuz? Bu eylemi geri alamazsınız!",
    confirmButtonText: "Evet",
    cancelButtonText: "Hayır",
    onTapCancel: () {
      Navigator.pop(context);
    },
    onTapConfirm: () {
      BaseWidget.of(context).dataStore.box.clear();
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.error,
    barrierDismissible: false,
  );
}

