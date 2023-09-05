package login;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginAdmin extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String login = (String)request.getSession().getAttribute("email");
		
		if (login == null || !login.equals("admin")) {
		response.sendRedirect(request.getContextPath()+"/member/alert?email=admin");
		return false;
		} else {
			return true;
		}
	}
}