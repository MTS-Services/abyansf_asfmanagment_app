import 'dart:convert';

class SpecificCategoryModel {
  final bool success;
  final SpecificCategoryData data;

  SpecificCategoryModel({required this.success, required this.data});

  factory SpecificCategoryModel.fromJson(Map<String, dynamic> json) {
    return SpecificCategoryModel(
      success: json['success'],
      data: SpecificCategoryData.fromJson(json['data']),
    );
  }
}

class SpecificCategoryData {
  final List<SpecificCategory> specificCategories;
  final Pagination pagination;

  SpecificCategoryData({required this.specificCategories, required this.pagination});

  factory SpecificCategoryData.fromJson(Map<String, dynamic> json) {
    return SpecificCategoryData(
      specificCategories: (json['specificCategories'] as List)
          .map((e) => SpecificCategory.fromJson(e))
          .toList(),
      pagination: Pagination.fromJson(json['pagination']),
    );
  }
}

class SpecificCategory {
  final int id;
  final String name;
  final int subCategoryId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final SubCategory subCategory;
  final List<Listing> listings;

  SpecificCategory({
    required this.id,
    required this.name,
    required this.subCategoryId,
    required this.createdAt,
    required this.updatedAt,
    required this.subCategory,
    required this.listings,
  });

  factory SpecificCategory.fromJson(Map<String, dynamic> json) {
    return SpecificCategory(
      id: json['id'],
      name: json['name'],
      subCategoryId: json['subCategoryId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      subCategory: SubCategory.fromJson(json['subCategory']),
      listings: (json['listings'] as List)
          .map((e) => Listing.fromJson(e))
          .toList(),
    );
  }
}

class SubCategory {
  final int id;
  final String name;
  final String img;
  final bool hasSpecificCategory;
  final int mainCategoryId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool contractWhatsapp;
  final dynamic fromName;
  final bool hasForm;
  final MainCategory mainCategory;
  final HeroSection heroSection;

  SubCategory({
    required this.id,
    required this.name,
    required this.img,
    required this.hasSpecificCategory,
    required this.mainCategoryId,
    required this.createdAt,
    required this.updatedAt,
    required this.contractWhatsapp,
    required this.fromName,
    required this.hasForm,
    required this.mainCategory,
    required this.heroSection,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json['id'],
      name: json['name'],
      img: json['img'],
      hasSpecificCategory: json['hasSpecificCategory'],
      mainCategoryId: json['mainCategoryId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      contractWhatsapp: json['contractWhatsapp'],
      fromName: json['fromName'],
      hasForm: json['hasForm'],
      mainCategory: MainCategory.fromJson(json['mainCategory']),
      heroSection: HeroSection.fromJson(json['heroSection']),
    );
  }
}

class MainCategory {
  final int id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  MainCategory({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MainCategory.fromJson(Map<String, dynamic> json) {
    return MainCategory(
      id: json['id'],
      name: json['name'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

class HeroSection {
  final int id;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int subCategoryId;

  HeroSection({
    required this.id,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.subCategoryId,
  });

  factory HeroSection.fromJson(Map<String, dynamic> json) {
    return HeroSection(
      id: json['id'],
      imageUrl: json['imageUrl'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      subCategoryId: json['subCategoryId'],
    );
  }
}

class Listing {
  final int id;
  final String name;
  final String mainImage;
  final List<String> subImages;
  final String location;
  final List<dynamic> memberPrivileges;
  final String memberPrivilegesDescription;
  final String description;
  final List<String> hours;
  final int specificCategoryId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String formName;
  final bool isActive;
  final List<String> menuImages;
  final List<String> typeofservice;
  final List<String> venueName;

  Listing({
    required this.id,
    required this.name,
    required this.mainImage,
    required this.subImages,
    required this.location,
    required this.memberPrivileges,
    required this.memberPrivilegesDescription,
    required this.description,
    required this.hours,
    required this.specificCategoryId,
    required this.createdAt,
    required this.updatedAt,
    required this.formName,
    required this.isActive,
    required this.menuImages,
    required this.typeofservice,
    required this.venueName,
  });

  factory Listing.fromJson(Map<String, dynamic> json) {
    return Listing(
      id: json['id'],
      name: json['name'],
      mainImage: json['main_image'],
      subImages: List<String>.from(json['sub_images']),
      location: json['location'],
      memberPrivileges: List<dynamic>.from(json['member_privileges']),
      memberPrivilegesDescription: json['member_privileges_description'],
      description: json['description'],
      hours: List<String>.from((json['hours'] as List).expand((e) => List<String>.from(jsonDecode(e)))),
      specificCategoryId: json['specificCategoryId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      formName: json['formName'],
      isActive: json['isActive'],
      menuImages: List<String>.from(json['menuImages']),
      typeofservice: List<String>.from((json['typeofservice'] as List).expand((e) => List<String>.from(jsonDecode(e)))),
      venueName: List<String>.from((json['venueName'] as List).expand((e) => List<String>.from(jsonDecode(e)))),
    );
  }
}

class Pagination {
  final int page;
  final int limit;
  final int total;
  final int pages;

  Pagination({
    required this.page,
    required this.limit,
    required this.total,
    required this.pages,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      page: json['page'],
      limit: json['limit'],
      total: json['total'],
      pages: json['pages'],
    );
  }
}
