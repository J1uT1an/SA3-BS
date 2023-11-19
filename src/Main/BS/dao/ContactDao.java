package Main.BS.dao;



import Main.BS.entity.Contact;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface ContactDao {


    void contactAdd(Contact contact);

    void contactDelete(Integer ccode);

    void contactUpdate(Contact contact);

    List<Contact> contactSelectByName(String cname);

    List<Contact> contactSelectAll();


}
