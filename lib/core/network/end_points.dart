abstract class EndPoints {

  static const String baseUrl = 'https://ntitodo-production-edbc.up.railway.app/api/';
  static const String login = 'login';
  static const String register = 'register';
  static const String newTask = 'new_task';
  static const String myTasks = 'my_tasks';
  static String update(int id) => 'tasks/$id';

}