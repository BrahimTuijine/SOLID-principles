//* BAD */

// class UploadFileService {
//   void uploadFile() {
//     print('Parent class : upload file ...');
//   }
// }

// class UploadImage extends UploadFileService {
//   void uploadImage() {
//     print('Image child class: upload image ...');
//   }
// }

// class UploadVideo extends UploadFileService {
//   void uploadVideo() {
//     print('Video child class: upload video ...');
//   }
// }

//** Good */

class UploadFileService {
  void uploadFile() {
    print('Parent class : upload file ...');
  }
}

class UploadImage extends UploadFileService {
  @override
  void uploadFile() {
    print('Image child class: upload image ...');
  }
}

class UploadVideo extends UploadFileService {
  @override
  void uploadFile() {
    print('Video child class: upload video ...');
  }
}

void main() {
  final data = <String>['video.mp4', 'image.png', 'file.pdf'];

  late UploadFileService uploadFile;

  for (var file in data) {
    if (file.contains('.mp4')) {
      uploadFile = UploadVideo();
    } else if (file.contains('png')) {
      uploadFile = UploadImage();
    } else {
      uploadFile = UploadFileService();
    }

    uploadFile.uploadFile();
  }
}
