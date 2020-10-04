package kr.kosta.bus.controller;

import java.net.URLEncoder;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import kr.kosta.bus.model.AllocationDTO;
import kr.kosta.bus.model.BriDTO;
import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.EmployerDTO;
import kr.kosta.bus.model.RouteDTO;
import kr.kosta.bus.service.AllocationService;
import kr.kosta.bus.service.BusService;
import kr.kosta.bus.service.RouteService;
import oracle.net.aso.m;

@Controller
@RequestMapping("/bc/*")
public class BaechaController {

	@Autowired
	BusService bservice;
	@Autowired
	RouteService rservice;
	@Autowired
	AllocationService aservice;

	// ###############################
	// 버스
	@RequestMapping("b-list.do")
	public String b_list(HttpServletRequest request, Model model) {
		int pg = 1;
		String strPg = request.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = bservice.getBusCount();
		System.out.println("start : " + start + " end : " + end);
		System.out.println("wtire count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize);
//		int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
		System.out.println("page count : " + allPage);

		int block = 10;
		int fromPage = ((pg - 1) / block * block) + 1;
		int toPage = ((pg - 1) / block * block) + block;

		if (toPage > allPage) {
			toPage = allPage;
		}

		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);

		List<BusDTO> dto = bservice.busList(map);
		model.addAttribute("buslist", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("allPage", allPage);
		model.addAttribute("block", block);
		model.addAttribute("fromPage", fromPage);
		model.addAttribute("toPage", toPage);

		return "/bc/b-list";
	}

	// b-insert
	@RequestMapping(value = "b-insertform.do", method = RequestMethod.GET)
	public String b_insertform() {
		return "/bc/b-insertform";
	}

	@RequestMapping(value = "b-insert.do", method = RequestMethod.POST)
	public String b_insert(HttpServletRequest request, Model model) {
		BusDTO dto = new BusDTO();
		if (request.getParameter("b_no").length() > 0 && request.getParameter("b_year").length() > 0
				&& request.getParameter("b_acc").length() > 0 && request.getParameter("b_mile").length() > 0) {
			dto.setB_no(request.getParameter("b_no"));
			dto.setB_year(Integer.parseInt(request.getParameter("b_year")));
			dto.setB_energy(request.getParameter("b_energy"));
			dto.setB_type(request.getParameter("b_type"));
			dto.setB_acc(Integer.parseInt(request.getParameter("b_acc")));
			dto.setB_mile(Integer.parseInt(request.getParameter("b_mile")));

			dto.setB_start(Date.valueOf(request.getParameter("b_start")));
			dto.setB_recent(Date.valueOf(request.getParameter("b_recent")));
			bservice.busInsert(dto);
			return "redirect:b-list.do";
		} else {
			model.addAttribute("reject", "입력되지 않은 항목이 있습니다.");
			model.addAttribute("url", "b-insertform.do");
			return "/bc/bc-reject";
		}
	}

	// b-update
	@RequestMapping(value = "b-update.do", method = RequestMethod.GET)
	public String busupdateform(BusDTO dto, Model model) {
		System.out.println(dto.getB_no());
		dto = bservice.busSelect(dto.getB_no());
		model.addAttribute("dto", dto);
		return "/bc/b-updateform";
	}

	@RequestMapping(value = "b-update.do", method = RequestMethod.POST)
	public String busupdate(HttpServletRequest request, Model model) {
		if (request.getParameter("b_acc").length() > 0 && request.getParameter("b_mile").length() > 0) {
			BusDTO dto = new BusDTO();
			dto.setB_no(request.getParameter("b_no"));
			dto.setB_type(request.getParameter("b_type"));
			dto.setB_acc(Integer.parseInt(request.getParameter("b_acc")));
			dto.setB_mile(Integer.parseInt(request.getParameter("b_mile")));
			bservice.busUpdate(dto);
			return "redirect:b-list.do";
		}
		else {
			model.addAttribute("reject", "잘못된 입력입니다.");
			model.addAttribute("url", "b-list.do");
			return "/bc/bc-reject";
		}
	}

	// b-delete
	@RequestMapping("b-delete.do")
	public String busdelete(String b_no, Model model) {
		BusDTO dto = new BusDTO();
		dto = bservice.busSelect(b_no);
		if (dto.getB_state().equals("운행중") || dto.getB_state().equals("정비접수") || dto.getB_state().equals("정비중")) {
			model.addAttribute("reject", "대기중인 차량만 삭제할 수 있습니다.");
			model.addAttribute("url", "b-list.do");
			return "/bc/bc-reject";
		} else {
			bservice.busDelete(b_no);
			return "redirect:b-list.do";
		}
	}
	
	// b-delete
		@RequestMapping("b-repair.do")
		public String busrepair(BusDTO dto, Model model) {
			System.out.println(dto.getB_state());
			if(dto.getB_state().equals("운행중")) {
				model.addAttribute("reject", "운행중인 차량은 접수할 수 없습니다.");
				model.addAttribute("url", "b-list.do");
				return "/bc/bc-reject";
			}
			else if(dto.getB_state().equals("정비접수") || dto.getB_state().equals("정비중")) {
				model.addAttribute("reject", "이미 접수된 차량입니다.");
				model.addAttribute("url", "b-list.do");
				return "/bc/bc-reject";
			}
			bservice.busRepairInsert(dto.getB_no());
			bservice.stateUpdateRrepair(dto.getB_no());
			return "redirect:b-list.do";
		}
		
	

	// ###############################
	// 노선
	@RequestMapping("r-list.do")
	public String home(HttpServletRequest request, Model model) {
		int pg = 1;
		String strPg = request.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = rservice.getRouteCount();
		System.out.println("start : " + start + " end : " + end);
		System.out.println("wtire count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize);
//		int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
		System.out.println("page count : " + allPage);

		int block = 10;
		int fromPage = ((pg - 1) / block * block) + 1;
		int toPage = ((pg - 1) / block * block) + block;

		if (toPage > allPage) {
			toPage = allPage;
		}

		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);

		List<RouteDTO> dto = rservice.routeList(map);
		model.addAttribute("routelist", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("allPage", allPage);
		model.addAttribute("block", block);
		model.addAttribute("fromPage", fromPage);
		model.addAttribute("toPage", toPage);

		return "/bc/r-list"; 
	}

	// r-insert
	@RequestMapping(value = "r-insertform.do", method = RequestMethod.GET)
	public String insertform() {
		return "/bc/r-insertform";
	}

	@RequestMapping(value = "r-insert.do", method = RequestMethod.POST)
	public String insert(HttpServletRequest request, Model model) {
		if (	request.getParameter("r_no").length() > 0 && request.getParameter("r_start").length() > 0 && request.getParameter("r_end").length() > 0 && 
				request.getParameter("r_s_time_h").length() > 0 && request.getParameter("r_s_time_m").length() > 0 && request.getParameter("r_e_time_h").length() > 0 && request.getParameter("r_e_time_m").length() > 0 &&
				 request.getParameter("r_interval").length() > 0 && request.getParameter("r_pay_adult").length() > 0 && request.getParameter("r_pay_adult2").length() > 0 &&
				request.getParameter("r_pay_teen").length() > 0 && request.getParameter("r_pay_teen2").length() > 0 && request.getParameter("r_pay_kid").length() > 0 && request.getParameter("r_pay_kid2").length() > 0) {
			RouteDTO dto = new RouteDTO();
			dto.setR_no(request.getParameter("r_no"));
			dto.setR_start(request.getParameter("r_start"));
			dto.setR_end(request.getParameter("r_end"));
			
			dto.setR_s_time(request.getParameter("r_s_time_h") + ":" + request.getParameter("r_s_time_m"));
			dto.setR_e_time(request.getParameter("r_e_time_h") + ":" +  request.getParameter("r_e_time_m"));
			
			dto.setR_interval(Integer.parseInt(request.getParameter("r_interval")));

			dto.setR_map(request.getParameter("r_map"));
			dto.setR_pay_adult(Integer.parseInt(request.getParameter("r_pay_adult")));
			dto.setR_pay_adult2(Integer.parseInt(request.getParameter("r_pay_adult2")));
			dto.setR_pay_teen(Integer.parseInt(request.getParameter("r_pay_teen")));
			dto.setR_pay_teen2(Integer.parseInt(request.getParameter("r_pay_teen2")));
			dto.setR_pay_kid(Integer.parseInt(request.getParameter("r_pay_kid")));
			dto.setR_pay_kid2(Integer.parseInt(request.getParameter("r_pay_kid2")));
			rservice.routeInsert(dto);
			return "redirect:r-list.do";
		}
		else {
			model.addAttribute("reject", "입력되지 않은 항목이 있습니다.");
			model.addAttribute("url", "r-insertform.do");
			return "/bc/bc-reject";
		}
	}

	// r-update
	@RequestMapping(value = "r-update.do", method = RequestMethod.GET)
	public String routeupdateform(RouteDTO dto, Model model) {
		dto = rservice.routeSelect(dto);
		model.addAttribute("dto", dto);
		String[] s = dto.getR_s_time().split(":", 2);
		String[] e = dto.getR_e_time().split(":", 2);
		model.addAttribute("r_s_time_h", s[0]);
		model.addAttribute("r_s_time_m", s[1]);
		model.addAttribute("r_e_time_h", e[0]);
		model.addAttribute("r_e_time_m", e[1]);
		System.out.println(dto.toString());
		return "/bc/r-updateform";
	}

	@RequestMapping(value = "r-update.do", method = RequestMethod.POST)
	public String routeupdate(HttpServletRequest request, Model model) {
		if (	request.getParameter("r_no").length() > 0 && request.getParameter("r_start").length() > 0 && request.getParameter("r_end").length() > 0 && 
				request.getParameter("r_s_time_h").length() > 0 && request.getParameter("r_s_time_m").length() > 0 && request.getParameter("r_e_time_h").length() > 0 && request.getParameter("r_e_time_m").length() > 0 &&
				request.getParameter("r_interval").length() > 0 && request.getParameter("r_pay_adult").length() > 0 && request.getParameter("r_pay_adult2").length() > 0 &&
				request.getParameter("r_pay_teen").length() > 0 && request.getParameter("r_pay_teen2").length() > 0 && request.getParameter("r_pay_kid").length() > 0 && request.getParameter("r_pay_kid2").length() > 0) {
			RouteDTO dto = new RouteDTO();
			dto.setR_no(request.getParameter("r_no"));
			dto.setR_start(request.getParameter("r_start"));
			dto.setR_end(request.getParameter("r_end"));
			
			System.out.println(request.getParameter("r_s_time_h"));
			System.out.println(request.getParameter("r_s_time_m"));
			System.out.println(request.getParameter("r_e_time_h"));
			System.out.println(request.getParameter("r_e_time_m"));
			
			dto.setR_s_time(request.getParameter("r_s_time_h") + ":" + request.getParameter("r_s_time_m"));
			dto.setR_e_time(request.getParameter("r_e_time_h") + ":" +  request.getParameter("r_e_time_m"));
			
			dto.setR_interval(Integer.parseInt(request.getParameter("r_interval")));
			dto.setR_map(request.getParameter("r_map"));
			dto.setR_pay_adult(Integer.parseInt(request.getParameter("r_pay_adult")));
			dto.setR_pay_adult2(Integer.parseInt(request.getParameter("r_pay_adult2")));
			
			dto.setR_pay_teen(Integer.parseInt(request.getParameter("r_pay_teen")));
			dto.setR_pay_teen2(Integer.parseInt(request.getParameter("r_pay_teen2")));
			dto.setR_pay_kid(Integer.parseInt(request.getParameter("r_pay_kid")));
			dto.setR_pay_kid2(Integer.parseInt(request.getParameter("r_pay_kid2")));

			rservice.routeUpdate(dto);
			return "redirect:r-list.do";
		}
		else {
			model.addAttribute("reject", "잘못된 입력입니다.");
			model.addAttribute("url", "r-list.do");
			return "/bc/bc-reject";
		}
	}

	// r-delete
	@RequestMapping("r-delete.do")
	public String routedelete(String r_no, Model model) {
		if (rservice.routealloc(r_no) == 0) {
			rservice.routeDelete(r_no);
			return "redirect:r-list.do";
		}
		else {
			model.addAttribute("reject", "해당 노선에 배차된 차량이 있습니다.");
			model.addAttribute("url", "r-list.do");
			return "/bc/bc-reject";
		}
	}
	
	// r-img
	@RequestMapping("r-img.do")
	public String routeimg(String r_no, Model model) {
		RouteDTO dto = new RouteDTO();
		dto.setR_no(r_no);
		dto = rservice.routeSelect(dto);
		model.addAttribute("dto", dto);
		return "/bc/r-img";
	}

	
	
	// ###############################
	// 배차
	@RequestMapping("a-list.do")
	public String a_list(HttpServletRequest request, Model model) {
		String nosun = "%";
		String time = "%";
		
		String a_r = request.getParameter("a_r");
		if(a_r != null && a_r.length() > 0) nosun = a_r;
		else if(request.getParameter("rno") != null && request.getParameter("rno").length() > 0) nosun = request.getParameter("rno");
		if(nosun.equals("전체")) nosun = "%";
		System.out.println(nosun);

		String a_time = request.getParameter("time");
		if(a_time != null && a_time.length() > 0) time = a_time;
		else if(request.getParameter("zo") != null && request.getParameter("zo").length() > 0) time = request.getParameter("zo");
		if(time.equals("전체")) time = "%";
		System.out.println(time);
		
		int pg = 1;
		String strPg = request.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;
		
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("nosun", nosun);
		map.put("time", time);

		int total = aservice.getAllocationCount(map);
		System.out.println("start : " + start + " end : " + end);
		System.out.println("wtire count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize);
//  		int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
		System.out.println("page count : " + allPage);

		int block = 10;
		int fromPage = ((pg - 1) / block * block) + 1;
		int toPage = ((pg - 1) / block * block) + block;

		if (toPage > allPage) {
			toPage = allPage;
		}

		List<AllocationDTO> dto = aservice.allocationList(map);
		List<BusDTO> blist = aservice.blist(map);
		List<RouteDTO> rlist = aservice.rlist(map);
		List<EmployerDTO> elist = aservice.elist(map);
		model.addAttribute("allocationlist", dto);
		model.addAttribute("blist", blist);
		model.addAttribute("rlist", rlist);
		model.addAttribute("elist", elist);
		model.addAttribute("pg", pg);
		model.addAttribute("allPage", allPage);
		model.addAttribute("block", block);
		model.addAttribute("fromPage", fromPage);
		model.addAttribute("toPage", toPage);
		
		if(nosun.equals("%")) nosun = "전체";
		if(time.equals("%")) time = "전체";
		
		model.addAttribute("rno", nosun);
		model.addAttribute("zo", time);

		return "/bc/a-list";
	}

	// a-insert
	@RequestMapping(value="a-insert.do", method = RequestMethod.POST)
	public String a_insert(AllocationDTO dto, Model model) throws Exception{
		String state = aservice.bstate(dto.getA_b_no());
		if(dto.getA_b_no().equals("선택") || dto.getA_r_no().equals("선택") || dto.getA_e_no().equals("선택")) {
			model.addAttribute("reject", "선택되지 않은 항목이 있습니다.");
			model.addAttribute("url", "a-list.do");
			return "/bc/bc-reject";
		}
		else if(state.equals("정비접수") || state.equals("정비중")) {
			model.addAttribute("reject", "정비중이거나 정비접수중인 차량입니다.");
			model.addAttribute("url", "a-list.do");
			return "/bc/bc-reject";
		}
		else {
			String[] sp = dto.getA_e_no().split(":", 2);
			dto.setA_e_no(sp[0]);
			dto.setA_e_name(sp[1]);
			System.out.println(dto);
			aservice.allocationInsert(dto);
			aservice.stateUpdateRun(dto);
			aservice.employerUpdateBno(dto);
		}
		return "redirect:a-list.do";
	}

	// a-update
	@RequestMapping(value = "a-update.do", method = RequestMethod.GET)
	public String allocationupdateform(AllocationDTO dto, Model model) {
		model.addAttribute("dto", dto);
		return "/bc/a-updateform";
	}

	@RequestMapping(value = "a-update.do", method = RequestMethod.POST)
	public String allocationupdate(AllocationDTO dto, Model model) {
		String[] sp = dto.getA_e_no().split(":", 2);
		dto.setA_e_no(sp[0]);
		aservice.allocationUpdate(dto);
		return "redirect:a-list.do";
	}

	// a-delete
	@RequestMapping("a-delete.do")
	public String allocationdelete(AllocationDTO dto) {
		aservice.allocationDelete(dto);
		aservice.stateUpdateStop(dto);
		aservice.employerUpdateBnull(dto);
		return "redirect:a-list.do";
	}
	
	
	
	
	
	
	
	// ###############################
	// 운행
	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		if (nValue == null)
			return null;
		return nValue.getNodeValue();
	}

	@RequestMapping("bri.do")
	public String a_bri(HttpServletRequest request, Model model) throws Exception {
		StringBuilder urlBuilder = new StringBuilder("http://openapi.gbis.go.kr/ws/rest/buslocationservice"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=서비스키"); /* Service Key */
		urlBuilder.append("&" + URLEncoder.encode("serviceKey", "UTF-8") + "="
				+ URLEncoder.encode("1234567890", "UTF-8")); /* 인증키(공공데이터포털 발급) */
		urlBuilder.append("&" + URLEncoder.encode("routeId", "UTF-8") + "="
				+ URLEncoder.encode("233000031", "UTF-8")); /* 노선 ID */
		String url = urlBuilder.toString();
		try {

			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(url);

			// root tag
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("busLocationList");
			// System.out.println("파싱할 리스트 수 : "+ nList.getLength());

			List<BriDTO> dto = new ArrayList<BriDTO>();
			
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					
					if (Integer.parseInt(getTagValue("stationSeq", eElement)) <= 15) {
						BriDTO bdto = new BriDTO();
						bdto.setPlate(getTagValue("plateNo", eElement));
						bdto.setSeat(Integer.parseInt(getTagValue("remainSeatCnt", eElement)));
						bdto.setStation(Integer.parseInt(getTagValue("stationSeq", eElement)));
						System.out.println("번호판  : " + getTagValue("plateNo", eElement));
						System.out.println("빈 좌석  : " + getTagValue("remainSeatCnt", eElement));
						System.out.println("현재 위치 : " + getTagValue("stationSeq", eElement));
						
						dto.add(bdto);
						
						System.out.println(bdto.toString());
						System.out.println();
					}
				} // if end
			} // for end
			model.addAttribute("bri", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		} // try~catch end
		
		return "/bc/bri";
	} // main end
	
	

}
