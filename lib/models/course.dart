class Course {
  String auther;
  String autherImg;
  String title;
  String imageUrl;

  Course({required this.auther, required this.autherImg, required this.title, required this.imageUrl});

  static List<Course> generateCourses() {
    return [
      Course(
          auther: "Luma Lanari",
          autherImg: "assets/icons/avatar01.png",
          title: "Paint Techniques",
          imageUrl: "assets/images/course01.png"),
      Course(
          auther: "Daniel Dia",
          autherImg: "assets/icons/avatar02.png",
          title: "Mushroom",
          imageUrl: "assets/images/course02.png"),
    ];
  }
}
