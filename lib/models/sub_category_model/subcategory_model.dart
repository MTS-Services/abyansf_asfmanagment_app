class SubCategoryResponse {
  final bool success;
  final SubCategoryData data;
  final Pagination pagination;

  SubCategoryResponse({
    required this.success,
    required this.data,
    required this.pagination,
  });

  factory SubCategoryResponse.fromJson(Map<String, dynamic> json) {
    return SubCategoryResponse(
      success: json['success'] ?? false,
      data: SubCategoryData.fromJson(json['data'] ?? {}),
      pagination: Pagination.fromJson(json['pagination'] ?? {}),
    );
  }
}

class SubCategoryData {
  final List<SubCategory> subCategories;
  final Pagination pagination;

  SubCategoryData({
    required this.subCategories,
    required this.pagination,
  });

  factory SubCategoryData.fromJson(Map<String, dynamic> json) {
    return SubCategoryData(
      subCategories: (json['subCategories'] as List?)?.map((e) => SubCategory.fromJson(e)).toList() ?? [],
      pagination: Pagination.fromJson(json['pagination'] ?? {}),
    );
  }
}

class SubCategory {
  final int id;
  final String name;
  final String img;
  final String description;
  final bool hasSpecificCategory;
  final int mainCategoryId;
  final String? createdAt;
  final String? updatedAt;
  final bool contractWhatsapp;
  final String? fromName;
  final bool hasForm;
  final bool hasMiniSubCategory;
  final HeroSection? heroSection;
  final MainCategory mainCategory;
  final List<SpecificCategory> specificCategories;
  final List<MiniSubCategory> miniSubCategory;

  SubCategory({
    required this.id,
    required this.name,
    required this.img,
    required this.description,
    required this.hasSpecificCategory,
    required this.mainCategoryId,
    this.createdAt,
    this.updatedAt,
    required this.contractWhatsapp,
    this.fromName,
    required this.hasForm,
    required this.hasMiniSubCategory,
    this.heroSection,
    required this.mainCategory,
    required this.specificCategories,
    required this.miniSubCategory,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      img: json['img'] ?? '',
      description: json['description'] ?? '',
      hasSpecificCategory: json['hasSpecificCategory'] ?? false,
      mainCategoryId: json['mainCategoryId'] ?? 0,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      contractWhatsapp: json['contractWhatsapp'] ?? false,
      fromName: json['fromName'],
      hasForm: json['hasForm'] ?? false,
      hasMiniSubCategory: json['hasMiniSubCategory'] ?? false,
      heroSection: json['heroSection'] != null
          ? HeroSection.fromJson(json['heroSection'])
          : null,
      mainCategory: MainCategory.fromJson(json['mainCategory'] ?? {}),
      specificCategories: (json['specificCategories'] as List?)?.map((e) => SpecificCategory.fromJson(e)).toList() ?? [],
      miniSubCategory: (json['miniSubCategory'] as List?)?.map((e) => MiniSubCategory.fromJson(e)).toList() ?? [],
    );
  }
}

class HeroSection {
  final String imageUrl;

  HeroSection({required this.imageUrl});

  factory HeroSection.fromJson(Map<String, dynamic> json) {
    return HeroSection(
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}

class MainCategory {
  final int id;
  final String name;
  final String? createdAt;
  final String? updatedAt;

  MainCategory({
    required this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory MainCategory.fromJson(Map<String, dynamic> json) {
    return MainCategory(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class SpecificCategory {
  final int id;
  final String name;
  final int subCategoryId;
  final String? createdAt;
  final String? updatedAt;
  final List<Listing> listings;

  SpecificCategory({
    required this.id,
    required this.name,
    required this.subCategoryId,
    this.createdAt,
    this.updatedAt,
    required this.listings,
  });

  factory SpecificCategory.fromJson(Map<String, dynamic> json) {
    return SpecificCategory(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      subCategoryId: json['subCategoryId'] ?? 0,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      listings: (json['listings'] as List?)?.map((e) => Listing.fromJson(e)).toList() ?? [],
    );
  }
}

class Listing {
  final int id;
  final String name;
  final String mainImage;
  final List<String> subImages;
  final String? location;
  final List<dynamic> memberPrivileges;
  final String? memberPrivilegesDescription;
  final String? description;
  final List<dynamic> hours;
  final int specificCategoryId;
  final String? createdAt;
  final String? updatedAt;
  final String? formName;
  final bool isActive;
  final List<dynamic> menuImages;
  final List<dynamic> typeOfService;
  final List<dynamic> venueName;
  final bool contractWhatsapp;
  final String? fromName;
  final bool hasForm;

  Listing({
    required this.id,
    required this.name,
    required this.mainImage,
    required this.subImages,
    this.location,
    required this.memberPrivileges,
    this.memberPrivilegesDescription,
    this.description,
    required this.hours,
    required this.specificCategoryId,
    this.createdAt,
    this.updatedAt,
    this.formName,
    required this.isActive,
    required this.menuImages,
    required this.typeOfService,
    required this.venueName,
    required this.contractWhatsapp,
    this.fromName,
    required this.hasForm,
  });

  factory Listing.fromJson(Map<String, dynamic> json) {
    return Listing(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      mainImage: json['main_image'] ?? '',
      subImages: (json['sub_images'] as List?)?.cast<String>() ?? [],
      location: json['location'],
      memberPrivileges: json['member_privileges'] ?? [],
      memberPrivilegesDescription: json['member_privileges_description'],
      description: json['description'],
      hours: json['hours'] ?? [],
      specificCategoryId: json['specificCategoryId'] ?? 0,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      formName: json['formName'],
      isActive: json['isActive'] ?? true,
      menuImages: json['menuImages'] ?? [],
      typeOfService: json['typeofservice'] ?? [],
      venueName: json['venueName'] ?? [],
      contractWhatsapp: json['contractWhatsapp'] ?? false,
      fromName: json['fromName'],
      hasForm: json['hasForm'] ?? false,
    );
  }
}

class MiniSubCategory {
  final int id;
  final String name;
  final String img;
  final bool hasSpecificCategory;
  final int subCategoryId;
  final String? createdAt;
  final String? updatedAt;
  final bool contractWhatsapp;
  final String? fromName;
  final bool hasForm;

  MiniSubCategory({
    required this.id,
    required this.name,
    required this.img,
    required this.hasSpecificCategory,
    required this.subCategoryId,
    this.createdAt,
    this.updatedAt,
    required this.contractWhatsapp,
    this.fromName,
    required this.hasForm,
  });

  factory MiniSubCategory.fromJson(Map<String, dynamic> json) {
    return MiniSubCategory(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      img: json['img'] ?? '',
      hasSpecificCategory: json['hasSpecificCategory'] ?? false,
      subCategoryId: json['subCategoryId'] ?? 0,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      contractWhatsapp: json['contractWhatsapp'] ?? false,
      fromName: json['fromName'],
      hasForm: json['hasForm'] ?? false,
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
      page: json['page'] ?? 1,
      limit: json['limit'] ?? 10,
      total: json['total'] ?? 0,
      pages: json['pages'] ?? 1,
    );
  }
}