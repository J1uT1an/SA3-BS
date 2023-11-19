package Main.BS.service;

import Main.BS.dao.ContactDao;
import Main.BS.entity.Contact;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class ContactService {

    @Autowired
    ContactDao contactMapper;
    public List<Contact> getContact(String keywords) {

        List<Contact> result = new ArrayList<Contact>();
        if (keywords.length() <= 0 || keywords == null) {
            result = contactMapper.contactSelectAll();
        } else {
            result = contactMapper.contactSelectByName("%" + keywords + "%");
        }

        return result;
    }

    public void contactDelete(Integer ccode){
        contactMapper.contactDelete(ccode);

    }
    public void contactAdd(Contact contact){
        System.out.println("添加操作："+contact);
        contactMapper.contactAdd(contact);
    }

    public void contactUpdate(Contact contact){

        System.out.println("修改操作："+contact);
        contactMapper.contactUpdate(contact);
    }


}
