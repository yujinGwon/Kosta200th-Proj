package kr.kosta.bus.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserDTO extends User {
	private String e_no;
	
	public UserDTO(String username, String password, 
			boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, 
			boolean accountNonLocked, 
			Collection<? extends GrantedAuthority> authorities,
			String userid) {
		super(username, password, enabled, accountNonExpired
				, credentialsNonExpired, accountNonLocked
				, authorities);
		this.e_no = e_no;
	}

	public String gete_no() {
		return e_no;
	}

	public void sete_no(String e_no) {
		this.e_no = e_no;
	}

	@Override
	public String toString() {
		return "UserDTO [e_no=" + e_no + "]";
	}
	

}
