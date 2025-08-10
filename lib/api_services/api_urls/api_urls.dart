class ApiUrls{
  static String token="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjbWRvMXR6OG0wMDBqcW4wa2tpam5jdXB6IiwidWlkIjoiSndHR1owcXg4blVNcjVhM2tCcGZHU2NVdTNQMiIsImVtYWlsIjoicm9iaXVsc3VueWVtb24xMTFAZ21haWwuY29tIiwicm9sZSI6IlVTRVIiLCJyZW1lbWJlck1lIjp0cnVlLCJpYXQiOjE3NTM4NTA4NTgsImV4cCI6MTc1NjQ0Mjg1OH0.8wwXP9atyWIuJTVRk3zLSM_z0OOVsfbMMDnJSFJPQsk";
  static String userID="cmdo1tz8m000jqn0kkijncupz";
  static String baseUrl="https://backend-ab.mtscorporate.com/api";
  static String loginUrl="$baseUrl/users/login";
  static String getProfileInfoUrl="$baseUrl/users/self";
  static String updateProfileInfoUrl="https://backend-ab.mtscorporate.com/api/users/cmdo1tz8m000jqn0kkijncupz";
  static String eventBookUrl="$baseUrl/events/book";
  static String getAllBookingHistoryUrl="$baseUrl/events/history/me";
  static String getAllPastBookingHistoryUrl="$baseUrl/events/history/me/past";
  static String getAllCancelBookingHistoryUrl="$baseUrl/events/history/me/cancelled";
  static String getAllUpcomingBookingHistoryUrl="$baseUrl/events/history/me/upcoming";
  static String getAllMainCategoriesUrl="$baseUrl/categories/main";
  static String getAllSpecificCategoriesUrl="$baseUrl/categories/specific?subCategoryId=";
}
