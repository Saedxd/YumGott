
import 'package:Yumgott/Core/Classes/Classes.dart';
import 'package:bloc/bloc.dart';
import 'package:Yumgott/Data/repository/irepository.dart';

import 'Notifications_event.dart';
import 'Notifications_State.dart';


class NotificationsBloc extends Bloc<NotificationEvent, NotificationsState> {

  IRepository _repository;

  NotificationsBloc(this._repository) : super(NotificationsState.initail()) ;

  @override
  NotificationsState get initialState => NotificationsState.initail();

  @override
  Stream<NotificationsState> mapEventToState(
      NotificationEvent event,
      ) async* {

    // if (event is GetNotifications) {
    //   try {
    //
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success= false
    //       ..GetNotification=null
    //     );
    //     state.Notificationss!.clear();
    //
    //     final date2 = await _repository.GetNotifications();
    //
    //     yield state.rebuild((b) => b
    //       ..GetNotification.replace(date2)
    //     );
    //
    //
    //
    //     for(int i=0;i<state.GetNotification!.data!.length;i++){
    //       notification noti = notification();
    //       noti.user = state.GetNotification!.data![i].request_user!.name.toString();
    //       noti.title = state.GetNotification!.data![i].title.toString();
    //       noti.Body = state.GetNotification!.data![i].body.toString();
    //       noti.Requesteduser_Image = state.GetNotification!.data![i].request_user!.profile_image_path.toString();
    //       noti.Time = state.GetNotification!.data![i].createdAt.toString();
    //       state.Notificationss!.add(noti);
    //      }
    //
    //
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //     );
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //       ..GetNotification = null
    //     );
    //   }
    // }



    //
    // if (event is ClearError) {
    //   yield state.rebuild((b) => b
    //     ..error = ""
    //   );
    // }
    //
    // if (event is ClearBadge) {
    //   try {
    //
    //
    //
    //   } catch (e) {
    //     print('get Error $e');
    //   }
    // }
    //
    // if (event is GetBadge) {
    //   try {
    //
    //     final date = await _repository.Getbadge();
    //
    //
    //     print('get Success data ${date}');
    //     yield state.rebuild((b) =>
    //     b..Getbadge.replace(date)
    //
    //     );
    //   } catch (e) {
    //     print('get Error $e');
    //   }
    // }
    //
    // if (event is DenyRequest) {
    //   try {
    //
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success= false
    //     );
    //
    //     state.notify!.removeAt(event.index!);
    //
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //     );
    //
    //     final date = await _repository.DenyRequest(event.friend_id!);
    //     final date2 = await _repository.DeleteNotification(event.Notification_id!);
    //
    //
    //     yield state.rebuild((b) =>
    //     b
    //       ..DenyFriendRequest.replace(date)
    //     );
    //   } catch (e) {
    //     print('get Error $e');
    //     yield state.rebuild((b) =>
    //     b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..success = false
    //     );
    //   }
    // }
    //
    // if (event is AceeptRequest) {
    //   try {
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success= false
    //     );
    //
    //     state.notify!.removeAt(event.index!);
    //
    //
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success= true
    //     );
    //
    //     final date = await _repository.AceeptRequest(event.friend_id!);
    //     final date2 = await _repository.DeleteNotification(event.Notification_id!);
    //
    //
    //     yield state.rebuild((b) =>
    //     b
    //       ..AceeptRequest.replace(date)
    //
    //     );
    //   } catch (e) {
    //
    //   }
    // }
  }
}
