
package com.hotelsystem.filter;

import java.util.Hashtable;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class UserSingletonLogin implements HttpSessionAttributeListener {
	Hashtable<String,HttpSession> sessions=new Hashtable<String,HttpSession>();
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		String key=arg0.getName();
		if(key.equals("account")){
			String name=(String) arg0.getValue();	
			HttpSession newSession=arg0.getSession();
			HttpSession oldSession=sessions.get(name);	
			if(oldSession!=null && !newSession.getId().equals(oldSession.getId())){
				oldSession.removeAttribute("account");
			}
			sessions.put(name, newSession);
		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
	}

}
