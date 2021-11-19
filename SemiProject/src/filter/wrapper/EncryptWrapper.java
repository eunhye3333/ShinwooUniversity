package filter.wrapper;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class EncryptWrapper extends HttpServletRequestWrapper{
	public EncryptWrapper(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String name) {
		String value = null;
		
		if(name != null && (name.equals("password")||name.equals("userPwd"))){
			MessageDigest md;
			try {
				md = MessageDigest.getInstance("SHA-512");
				byte[] bytes = super.getParameter(name).getBytes(Charset.forName("UTF-8"));
				md.update(bytes);
				value = Base64.getEncoder().encodeToString(md.digest());
				
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else {
			value = super.getParameter(name);
		}
		return value;
	}
}
