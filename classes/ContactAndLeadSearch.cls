public class ContactAndLeadSearch {
    public static List<List<sobject>> searchContactsAndLeads (string Lastname){
        List<List<sobject>> contactLeadList = [Find :lastName IN ALL FIELDS RETURNING Contact(Name),Lead(Name)];
        return contactLeadList;
    }
}