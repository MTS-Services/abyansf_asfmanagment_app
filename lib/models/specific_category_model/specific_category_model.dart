class SubcategoryDetailResponse {
  final bool success;
  final SubcategoryDetailData data;
  final Pagination pagination;

  SubcategoryDetailResponse({
    required this.success,
    required this.data,
    required this.pagination,
  });

  factory SubcategoryDetailResponse.fromJson(Map<String, dynamic> json) {
    return SubcategoryDetailResponse(
      success: json['success'],
      data: SubcategoryDetailData.fromJson(json['data']),
      pagination: Pagination.fromJson(json['data']['pagination']),
    );
  }
}

class SubcategoryDetailData {
  final SubCategory subCategory;
  final List<SpecificCategoryWithListings> specificCategories;

  SubcategoryDetailData({
    required this.subCategory,
    required this.specificCategories,
  });

  factory SubcategoryDetailData.fromJson(Map<String, dynamic> json) {
    var specificList = json['specificCategories'] as List;
    List<SpecificCategoryWithListings> specificCategories = specificList
        .map((specific) => SpecificCategoryWithListings.fromJson(specific))
        .toList();

    return SubcategoryDetailData(
      subCategory: SubCategory.fromJson(json['subCategory']),
      specificCategories: specificCategories,
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
  final MainCategory? mainCategory;
  final String? heroSectionImg;

  SubCategory({
    required this.id,
    required this.name,
    required this.img,
    required this.hasSpecificCategory,
    required this.mainCategoryId,
    required this.createdAt,
    required this.updatedAt,
    this.mainCategory,
    this.heroSectionImg,
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
      mainCategory: json['mainCategory'] != null
          ? MainCategory.fromJson(json['mainCategory'])
          : null,
      heroSectionImg: json['herosection_img'],
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

class SpecificCategoryWithListings {
  final int id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<Listing> listings;

  SpecificCategoryWithListings({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.listings,
  });

  factory SpecificCategoryWithListings.fromJson(Map<String, dynamic> json) {
    var listingsList = json['listings'] as List;
    List<Listing> listings = listingsList
        .map((listing) => Listing.fromJson(listing))
        .toList();

    return SpecificCategoryWithListings(
      id: json['id'],
      name: json['name'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      listings: listings,
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
  final List<String> typeOfService;
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
    required this.typeOfService,
    required this.venueName,
  });

  factory Listing.fromJson(Map<String, dynamic> json) {
    return Listing(
      id: json['id'],
      name: json['name'],
      mainImage: json['main_image'],
      subImages: List<String>.from(json['sub_images']),
      location: json['location'],
      memberPrivileges: json['member_privileges'],
      memberPrivilegesDescription: json['member_privileges_description'],
      description: json['description'],
      hours: _parseHours(json['hours']),
      specificCategoryId: json['specificCategoryId'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      formName: json['formName'],
      isActive: json['isActive'],
      menuImages: List<String>.from(json['menuImages']),
      typeOfService: _parseStringList(json['typeofservice']),
      venueName: _parseStringList(json['venueName']),
    );
  }

  static List<String> _parseHours(List<dynamic> hours) {
    return hours.map((hour) => hour.toString()).toList();
  }

  static List<String> _parseStringList(List<dynamic> list) {
    return list.map((item) => item.toString()).toList();
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




