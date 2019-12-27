class Image {
  final int imageId;
  final imageName;

  Image({this.imageId, this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(imageId: parsedJson['id'], imageName: parsedJson['imageName']);
  }
}

class Data {
  final int dataId;
  final String dataFirstname;
  final String dataLastname;
  final String avatar;
  final List<Image> images;

  Data(
      {this.dataId,
      this.dataFirstname,
      this.dataLastname,
      this.avatar,
      this.images});

  factory Data.fromJson(Map<String, dynamic> dataJson) {
    var list = dataJson['images'] as List;
    List<Image> imagesList = list.map((i) => Image.fromJson(i)).toList();

    return Data(
        dataId: dataJson['id'],
        dataFirstname: dataJson['first_name'],
        dataLastname: dataJson['last_name'],
        avatar: dataJson['avatar'],
        images: imagesList);
  }
}

class Author {
  final String aFirstname;
  final String aLastname;

  Author({this.aFirstname, this.aLastname});

  factory Author.fromJson(Map<String, dynamic> authorJson) {
    return Author(
        aFirstname: authorJson['first_name'],
        aLastname: authorJson['last_name']);
  }
}

class Page {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final Author author;
  final List<Data> data;

  Page(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      this.author,
      this.data});

  factory Page.fromJson(Map<String, dynamic> pJson){
    var list = pJson['data'] as List;
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();

    return Page(
      page: pJson['page'],
      perPage: pJson['per_page'],
      total: pJson['total'],
      totalPages: pJson['total_pages'],
      author: Author.fromJson(pJson['author']),
      data: dataList
    );
  }
}
