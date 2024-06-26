public class SMSModifier {
    public String modifySMS(String message, String operation) {
        /*if(operation!='A' || operation!='B' || operation!='C' || operation!='D') {
            return 'Invalid choice. Please select A, B, C, or D.';
        }*/
        //else {
            if(operation=='A' || operation=='a') {
                return message+' '+message;
            }
            else if(operation=='B' || operation=='b') {
                return message.replace(' ','_');
            }
           /* else if(operation=='C' || operation=='c') {
                return message.replaceAll('[^0-9.]', '');
            }*/
            else {
                return message.reverse();
            }
        //}
    }
}