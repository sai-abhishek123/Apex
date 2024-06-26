public class UsernameValidator {
    public Boolean validateUsername(String username) {
        Boolean return_variable;
        List<String> list_of_string=new List<String>();
        String uppercase='QWERTYUIOPASDFGHJKLZXCVBNM';
        if(username==null || username=='') {
            return_variable=false;
        }
        else {
            list_of_string=username.split('_job');
            if((list_of_string[0].containsAny(uppercase))||list_of_string[0].length()<8) {
                return_variable=false;
            }
        }
        System.debug(list_of_string);
        return return_variable;
    }
}