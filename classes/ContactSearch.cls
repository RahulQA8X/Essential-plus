public class ContactSearch {
        public static List<Contact> searchForContacts (string lastname, string PostalCode){
        List<Contact> contacts = [Select Id,Name from Contact where LastName =:lastname and MailingPostalCode=:PostalCode];
        return contacts;
}
}