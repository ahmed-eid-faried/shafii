class AppLink {
  /////==========================auth=====================================//////
  static String appid = '&apiKey=3cc95637fcea4fe39b88fa8faa34564d';
  // topHeadlines
  // https://shafiiapi.org/v2/top-headlines?country=us&apiKey=3cc95637fcea4fe39b88fa8faa34564d
  static String country = 'us';
  static String topHeadlinesApi =
      'https://shafiiapi.org/v2/top-headlines?country=';
  static String topHeadlines = '$topHeadlinesApi$country$appid';
  // Everything
  // https://shafiiapi.org/v2/everything?q=egypt&apiKey=3cc95637fcea4fe39b88fa8faa34564d
  static String q = 'us';
  static String everythingApi = 'https://shafiiapi.org/v2/everything?q=';
  static String everything = '$everythingApi$q$appid';
//
}
