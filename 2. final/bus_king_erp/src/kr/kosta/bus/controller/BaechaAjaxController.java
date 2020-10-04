package kr.kosta.bus.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.kosta.bus.model.EmployerDTO;
import kr.kosta.bus.security.service.ShaEncoder;
import kr.kosta.bus.service.BusService;
import kr.kosta.bus.service.EmployerService;
import kr.kosta.bus.service.RouteService;

@RestController
@RequestMapping("/")
public class BaechaAjaxController {
	
	@Inject
	ShaEncoder shaEncoder;

	@Autowired
	BusService bservice;
	@Autowired
	RouteService rservice;
	@Autowired
	EmployerService eservice;
	
	@RequestMapping(value="/bc/ajax/b-insert.aj", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
    public ResponseEntity<String> businsert(HttpServletRequest request) {
		String status = "";
		if(request.getParameter("b_no").length() > 0 && bservice.bnoCheck(request.getParameter("b_no")) > 0){
			//ajax처리
			return new ResponseEntity<String>(status, HttpStatus.valueOf(500));
		}
		else {
			//정상처리
			return new ResponseEntity<String>(status, HttpStatus.valueOf(200));
		}
    }
	
	@RequestMapping(value="/bc/ajax/r-insert.aj", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
    public ResponseEntity<String> routeinsert(HttpServletRequest request) {
		String status = "";
		if(request.getParameter("r_no").length() > 0 && rservice.rnoCheck(request.getParameter("r_no")) > 0){
			//ajax처리
			return new ResponseEntity<String>(status, HttpStatus.valueOf(500));
		}
		else {
			//정상처리
			return new ResponseEntity<String>(status, HttpStatus.valueOf(200));
		}
    }
	
	@RequestMapping(value="/uc/ajax/pwd.aj", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
    public ResponseEntity<String> pwdupdate(HttpServletRequest request) {
		String status = "";
		String id = request.getParameter("name");
		String pwd = request.getParameter("currentpwd");
		String uppwd = request.getParameter("updatepwd");
		String uppwd2 = request.getParameter("updatepwd2");
		
		String dbpw = shaEncoder.saltEncoding(pwd, id);
		EmployerDTO dto = new EmployerDTO();
		dto.setE_no(id);
		dto = eservice.employerUpdate2(dto);
		System.out.println("cur : " + !dbpw.equals(dto.getE_pwd()) + ", check : " + !uppwd.equals(uppwd2));
		if(!dbpw.equals(dto.getE_pwd()) || !uppwd.equals(uppwd2)){
			//ajax처리
			return new ResponseEntity<String>(status, HttpStatus.valueOf(500));
		}
		else {
			//정상처리
			return new ResponseEntity<String>(status, HttpStatus.valueOf(200));
		}
    }

}
