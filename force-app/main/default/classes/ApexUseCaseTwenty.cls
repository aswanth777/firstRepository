public with sharing class ApexUseCaseTwenty {
   public static UserInfoWrapper getLoggedInUserInfo() {

UserInfoWrapper wrapper = new UserInfoWrapper();
wrapper.localeInfo = UserInfo.getLocale();
wrapper.timezoneInfo=String.valueOf(UserInfo.getTimeZone());
String userId=UserInfo.getUserId();
List<User>userRecord=[SELECT Id,LastLoginDate FROM User WHERE Id =:userId LIMIT 1];
if(userRecord.size()>0){
    if(userRecord[0].LastLoginDate != null){
        wrapper.lastLoginInfo = userRecord[0].LastLoginDate;
    }
}
return wrapper;
   }
   public class  UserInfoWrapper {
  
    public String localeInfo;
   
    public String timezoneInfo;
  
    public DateTime lastLoginInfo;


}
}