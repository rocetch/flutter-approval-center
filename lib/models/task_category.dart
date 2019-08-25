class TaskCategory {
  TaskCategory(this.name, this.totalCnt, this.unreadCnt);

  String name;
  int totalCnt;
  int unreadCnt;

  String get displayName => "$name ($unreadCnt/$totalCnt)";
}