class AllCategoriesModel {
  bool? success;
  Data? data;

  AllCategoriesModel({this.success, this.data});

  AllCategoriesModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<MainCategories>? mainCategories;
  Pagination? pagination;

  Data({this.mainCategories, this.pagination});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['mainCategories'] != null) {
      mainCategories = <MainCategories>[];
      json['mainCategories'].forEach((v) {
        mainCategories!.add(MainCategories.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (mainCategories != null) {
      data['mainCategories'] =
          mainCategories!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    return data;
  }
}

class MainCategories {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  List<SubCategories>? subCategories;

  MainCategories(
      {this.id, this.name, this.createdAt, this.updatedAt, this.subCategories});

  MainCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    if (json['subCategories'] != null) {
      subCategories = <SubCategories>[];
      json['subCategories'].forEach((v) {
        subCategories!.add(SubCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (subCategories != null) {
      data['subCategories'] =
          subCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategories {
  int? id;
  String? name;
  String? img;
  bool? hasSpecificCategory;
  int? mainCategoryId;
  String? createdAt;
  String? updatedAt;
  bool? contractWhatsapp;
  Null fromName;
  bool? hasForm;
  List<SpecificCategories>? specificCategories;

  SubCategories(
      {this.id,
        this.name,
        this.img,
        this.hasSpecificCategory,
        this.mainCategoryId,
        this.createdAt,
        this.updatedAt,
        this.contractWhatsapp,
        this.fromName,
        this.hasForm,
        this.specificCategories});

  SubCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    hasSpecificCategory = json['hasSpecificCategory'];
    mainCategoryId = json['mainCategoryId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    contractWhatsapp = json['contractWhatsapp'];
    fromName = json['fromName'];
    hasForm = json['hasForm'];
    if (json['specificCategories'] != null) {
      specificCategories = <SpecificCategories>[];
      json['specificCategories'].forEach((v) {
        specificCategories!.add(SpecificCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    data['hasSpecificCategory'] = hasSpecificCategory;
    data['mainCategoryId'] = mainCategoryId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['contractWhatsapp'] = contractWhatsapp;
    data['fromName'] = fromName;
    data['hasForm'] = hasForm;
    if (specificCategories != null) {
      data['specificCategories'] =
          specificCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}






class SpecificCategories {
  int? id;
  String? name;
  int? subCategoryId;
  String? createdAt;
  String? updatedAt;

  SpecificCategories(
      {this.id, this.name, this.subCategoryId, this.createdAt, this.updatedAt});

  SpecificCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subCategoryId = json['subCategoryId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['subCategoryId'] = subCategoryId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Pagination {
  int? page;
  int? limit;
  int? total;
  int? pages;

  Pagination({this.page, this.limit, this.total, this.pages});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    limit = json['limit'];
    total = json['total'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['limit'] = limit;
    data['total'] = total;
    data['pages'] = pages;
    return data;
  }
}
