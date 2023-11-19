package Main.BS.contraller;

import Main.BS.entity.Contact;
import Main.BS.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class contactContraller {
    @Autowired
    ContactService contactService;


    @RequestMapping("/contactSearch")
    public ModelAndView contactSearch(@RequestParam(name = "keywords", required = false) String keywords){
        ModelAndView mav = new ModelAndView();
        if (keywords==null)
            keywords="";
        List<Contact> contactList = contactService.getContact(keywords);

        mav.setViewName("index.jsp");
        mav.addObject("contactList", contactList);
        return mav;
    }


    @RequestMapping("/contactAdd")
    public ModelAndView contactAdd(@RequestParam(name = "cname", required = true) String cname,
                                 @RequestParam(name = "caddress", required = false) String caddress,
                                 @RequestParam(name = "cphone", required = false)  String cphone){
        ModelAndView mav = new ModelAndView();
        Contact contact = new Contact();
        contact.setCcode(null);
        contact.setCname(cname);
        contact.setCaddress(caddress);
        contact.setCphone(cphone);
        contactService.contactAdd(contact);
        mav.setViewName("contactSearch");
        return mav;
    }

    @RequestMapping("/contactUpdate")
    public ModelAndView contactUpdate(
                                @RequestParam(name = "ccode", required = false) Integer ccode,
                                @RequestParam(name = "cname", required = false) String cname,
                                 @RequestParam(name = "caddress", required = false) String caddress,
                                 @RequestParam(name = "cphone", required = false)  String cphone,
                                      HttpServletRequest req){

        ModelAndView mav = new ModelAndView();
        Contact contact = new Contact();
        contact.setCcode(ccode);
        contact.setCname(cname);
        contact.setCaddress(caddress);
        contact.setCphone(cphone);
        contactService.contactUpdate(contact);

        mav.setViewName("contactSearch");
        return mav;
    }

    @RequestMapping("/contactUpdateDetails")
    public ModelAndView contactUpdateDetails(@RequestParam(name = "ccode", required = false) Integer ccode,
                                             @RequestParam(name = "cname", required = false) String cname,
                                             @RequestParam(name = "caddress", required = false) String caddress,
                                             @RequestParam(name = "cphone", required = false)  String cphone,
                             HttpServletRequest req){

        ModelAndView mav = new ModelAndView();
        System.out.println(1);
        Contact contact =new Contact();
        contact.setCcode(ccode);
        contact.setCname(cname);
        contact.setCaddress(caddress);
        contact.setCphone(cphone);
        mav.addObject("contact",contact);
        mav.setViewName("contactUpdate.jsp");
        return mav;
    }


    @RequestMapping("/contactDelete")
    public ModelAndView contactDelete(@RequestParam(name = "ccode", required = true) Integer ccode,
                                      HttpServletRequest req){

        ModelAndView mav = new ModelAndView();

        contactService.contactDelete(ccode);
        mav.setViewName("contactSearch");
        return mav;
    }




}
