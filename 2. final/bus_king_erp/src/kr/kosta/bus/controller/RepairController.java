package kr.kosta.bus.controller;


import java.util.HashMap;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.FuelDTO;
import kr.kosta.bus.model.PenaltyDTO;
import kr.kosta.bus.model.RepairDTO;
import kr.kosta.bus.model.Wonlyo2_DTO;
import kr.kosta.bus.model.WonlyoDTO;
import kr.kosta.bus.service.FuelService;
import kr.kosta.bus.service.RepairService;
import kr.kosta.bus.service.Wonlyo2Service;
import kr.kosta.bus.service.WonlyoService;

@Controller
@RequestMapping("/rc/*")
public class RepairController {
	
	@Autowired
	Wonlyo2Service Wo2service;
	
	@Autowired
	WonlyoService Woservice;
	@Autowired
	RepairService Reservice;
	
	@Autowired
	FuelService fservice;
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "re-list.do", method =RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		int pg = 1;
		String strPg = request.getParameter("pg");
		
		if(strPg != null) {
			pg = Integer.parseInt(strPg);
		}
		
		int rowSize = 5;
		int start = (pg*rowSize) - (rowSize-1);
		int end = pg*rowSize;
		
		int total = Reservice.getRepairCount();
		System.out.println("start : " + start + " end : " + end);
		System.out.println("wtire count : " + total);
		
		int allPage = (int)Math.ceil(total/(double)rowSize);
//		int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
		System.out.println("page count : " + allPage);
		
		int block = 5;
		int fromPage = ((pg-1) / block*block) + 1;
		int toPage = ((pg-1) / block*block) + block;
		
		if(toPage > allPage) {
			toPage = allPage;
		}
		
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<RepairDTO> dto = Reservice.repairList(map);

		model.addAttribute("repairlist", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("allPage", allPage);
		model.addAttribute("block", block);
		model.addAttribute("fromPage", fromPage);
		model.addAttribute("toPage", toPage);
		
		return "/rc/re-list";
		
	}
	
	@RequestMapping(value = "re-insertform.do", method = RequestMethod.GET)
	public String insertform(Model model) {
		HashMap map = new HashMap();
		
		List<BusDTO> blist = Reservice.buslist(map);
		model.addAttribute("blist", blist);
		return "/rc/re-insertform";
	}
	@RequestMapping(value = "re-insert.do", method = RequestMethod.POST)
	public  String insert(HttpServletRequest request,Model model){
		 RepairDTO dto = new RepairDTO();
		if (request.getParameter("re_b_no").length() > 0 && request.getParameter("re_date").length() > 0 && 
			request.getParameter("re_state").length()> 0 && request.getParameter("re_breakdown").length() > 0
			) {
			
//		dto.setRe_code(request.getParameter("re_code"));
		dto.setRe_b_no(request.getParameter("re_b_no"));
		dto.setRe_date(request.getParameter("re_date"));
//		dto.setRe_cost(Integer.parseInt(request.getParameter("re_cost")));
		dto.setRe_state(request.getParameter("re_state"));
		dto.setRe_breakdown(request.getParameter("re_breakdown"));
		dto.setRe_bigo(request.getParameter("re_bigo"));
		dto.setRe_date2(request.getParameter("re_date2"));
		Reservice.repairInsert(dto);
		return "redirect:re-list.do";
		}else {
		model.addAttribute("reject", "입력이 잘못됬습니다.");
		model.addAttribute("url", "re-insertform.do");
		return "/rc/re-reject";
		}
	}
	
	@RequestMapping(value="re-updateform.do", method=RequestMethod.GET)
	public String updateform(RepairDTO dto, Model model) {
		dto = Reservice.select(dto);
		model.addAttribute("dto",dto);
		return "/rc/re-updateform";
		}
	@RequestMapping(value="re-update.do", method=RequestMethod.POST)
	public String routeupdate(HttpServletRequest request,Model model) {
		if (request.getParameter("re_cost").length() > 0 && request.getParameter("re_state").length() > 0 && 
				request.getParameter("re_breakdown").length()> 0) {
			RepairDTO dto = new RepairDTO();
			dto.setRe_code(request.getParameter("re_code"));
			dto.setRe_b_no(request.getParameter("re_b_no"));
			dto.setRe_date(request.getParameter("re_date"));
			dto.setRe_cost(Integer.parseInt(request.getParameter("re_cost")));
			dto.setRe_state(request.getParameter("re_state"));
			dto.setRe_breakdown(request.getParameter("re_breakdown"));
			dto.setRe_bigo(request.getParameter("re_bigo"));
//			dto.setRe_date2(request.getParameter("re_date2"));
			model.addAttribute("repair",dto);
			Reservice.repairUpdate(dto);
			Reservice.busUpdatestate(dto);
		return "redirect:re-list.do";
	}else {
			model.addAttribute("reject", "잘못된 입력입니다.");
			model.addAttribute("url", "re-list.do");
			return "/rc/re-reject";
			}
	}
	
    @RequestMapping("re-delete.do")
    public String delete(String re_code) {
    	Reservice.repairDelete(re_code);
      return "redirect:re-list.do";
    }
    
	   @RequestMapping(value="re-ac.do", method=RequestMethod.GET)
	   public String reupdate2(RepairDTO dto) {
//		   System.out.println(dto.toString());
		   Reservice.repairUpdateState(dto);
		   System.out.println(dto.toString());
//		   	System.out.println(dto);
//		   Reservice.state(dto);
			if(dto.getRe_state().equals("정비완료")) dto.setRe_state("대기중");
			Reservice.busUpdatestate(dto);
			if(dto.getRe_state().equals("대기중")) dto.setRe_state("운행가능");
			Reservice.accUpdatestate(dto);
		   Reservice.accoInsert(dto);
		  return "redirect:re-list.do";
	   }
    
//		@RequestMapping(value = "re-ac.do", method = RequestMethod.GET)
//		public String penaltyupdate(RepairDTO dto,String re_code,Model model) {
//			Reservice.repairUpdateState(re_code);
//			Reservice.accoInsert(dto);
//
//			return "redirect:re-list.do";
//		}
//-------------------------------------------------------------------------------------FUEL
    
    
    
    @RequestMapping(value = "f-list.do", method =RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		int pg = 1;
		String strPg = request.getParameter("pg");
		
		if(strPg != null) {
			pg = Integer.parseInt(strPg);
		}
		
		int rowSize = 5;
		int start = (pg*rowSize) - (rowSize-1);
		int end = pg*rowSize;
		
		int total = fservice.getfuelCount();
//		System.out.println("start : " + start + " end : " + end);
//		System.out.println("wtire count : " + total);
		
		int allPage = (int)Math.ceil(total/(double)rowSize);
//		int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
//		System.out.println("page count : " + allPage);
		
		int block = 5;
		int fromPage = ((pg-1) / block*block) + 1;
		int toPage = ((pg-1) / block*block) + block;
		
		if(toPage > allPage) {
			toPage = allPage;
		}
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<FuelDTO> dto = fservice.fuelList(map);

		model.addAttribute("fuel", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("allPage", allPage);
		model.addAttribute("block", block);
		model.addAttribute("fromPage", fromPage);
		model.addAttribute("toPage", toPage);
		
		return "/rc/f-list";
		
	}
	@RequestMapping(value = "f-insertform.do", method = RequestMethod.GET)
	public String finsertform(Model model) {
		HashMap map = new HashMap();
		List<BusDTO> blist = fservice.bflist(map);
		model.addAttribute("blist", blist);
		return "/rc/f-insertform";
	}
	@RequestMapping(value = "f-insert.do", method = RequestMethod.POST)
	public  String finsert(HttpServletRequest request, FuelDTO dto){
		
//		  FuelDTO dto = new FuelDTO(); 
//		  if (
//		   request.getParameter("f_b_no").length() > 0 && 
//		  request.getParameter("f_b_energy").length() > 0 &&
//		  request.getParameter("f_date").length()> 0 &&
//		  request.getParameter("f_charge").length() > 0 &&
//		  request.getParameter("f_cost").length() > 0 &&
//		  request.getParameter("f_payment").length() > 0 &&
//		  request.getParameter("f_nametag").length() > 0 &&
//		  request.getParameter("f_cost").length() > 0 ) {
//	
//		dto.setF_code(request.getParameter("f_code"));
		dto.setF_b_no(request.getParameter("f_b_no"));
		dto.setF_b_energy(request.getParameter("f_b_energy"));
		dto.setF_date(request.getParameter("f_date"));
		dto.setF_charge(Integer.parseInt(request.getParameter("f_charge")));
		dto.setF_cost(Integer.parseInt(request.getParameter("f_cost")));
		dto.setF_payment(request.getParameter("f_payment"));
		dto.setF_nametag(request.getParameter("f_nametag"));
		dto.setF_bigo(request.getParameter("f_bigo"));
		fservice.fuelInsert(dto);
		return "redirect:f-list.do";
	} 
//		 else {
//		model.addAttribute("reject", "잘못된 입력입니다."); 
//		 model.addAttribute("url","f-insertform.do");
//		 return "/rc/re-reject"; 
//		 }
//	
//	}
	   @RequestMapping(value= "f-update.do", method=RequestMethod.GET)
	   public String fuelupdate(FuelDTO dto) {
	      fservice.fuelUpdate(dto);
	      System.out.println(dto.toString());
	      fservice.faccInsert(dto);
	      return "redirect:f-list.do";
	   }
//	 @RequestMapping(value="f-update.do", method=RequestMethod.GET)
//	   public String fuelupdate(String f_code,Model model) {
//	      fservice.fuelUpdate(f_code);
//	      return "redirect:f-list.do";
//	   }
//
//	@RequestMapping(value="f-update.do", method=RequestMethod.GET)
//	public String fuelupdate(FuelDTO dto,Model model) {
//		model.addAttribute("fuel",dto);
//		fservice.fuelUpdate(dto);
//		return "redirect:f-list.do";
//	}
	
    @RequestMapping("f-delete.do")
    public String fdelete(String f_code) {
    	fservice.fuelDelete(f_code);
      return "redirect:f-list.do";
    }
    
    
//	-------------------------------------------------------------Wonlyo  
    
	@RequestMapping(value = "wo-list.do", method = RequestMethod.GET)
	public String list(Model model) {
		HashMap map = new HashMap();
		List<WonlyoDTO> dto = Woservice.wonlyoList(map);
		model.addAttribute("Wonlyolist", dto);
		
		return "/rc/wo-list";
		}
	
	@RequestMapping(value="wo-updateform.do",method=RequestMethod.GET)
	public String woupdateform(WonlyoDTO dto, Model model) {
		dto = Woservice.selectBy(dto);
		model.addAttribute("dto",dto);
		return "/rc/wo-updateform";
		
	}

	@RequestMapping(value="wo-update.do",method = RequestMethod.POST)
	public String woupdate(WonlyoDTO dto, Model model, HttpServletRequest request) {
		dto.setWo_code(request.getParameter("wo_code"));
		dto.setWo_total(Integer.parseInt(request.getParameter("wo_total")));
		Woservice.wonlyoUpdate(dto);
		return "redirect:wo-list.do";
		
	}
	

	/*
	 * @RequestMapping("wo-delete.do") public String fdelete(String f_code) {
	 * fservice.fuelDelete(f_code); return "redirect:f-list.do"; }
	 */
    //-----------------------------

	   @RequestMapping(value = "woio-list.do", method =RequestMethod.GET)
		public String wolist(HttpServletRequest request, Model model) {
			int pg = 1;
			String strPg = request.getParameter("pg");
			
			if(strPg != null) {
				pg = Integer.parseInt(strPg);
			}
			
			int rowSize = 5;
			int start = (pg*rowSize) - (rowSize-1);
			int end = pg*rowSize;
			
			int total = Wo2service.getwonlyo2Count();
			System.out.println("start : " + start + " end : " + end);
			System.out.println("wtire count : " + total);
			
			int allPage = (int)Math.ceil(total/(double)rowSize);
//			int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
			System.out.println("page count : " + allPage);
			
			int block = 5;
			int fromPage = ((pg-1) / block*block) + 1;
			int toPage = ((pg-1) / block*block) + block;
			
			if(toPage > allPage) {
				toPage = allPage;
			}
			
			HashMap map = new HashMap();
			map.put("start", start);
			map.put("end", end);
			
			List<Wonlyo2_DTO> dto = Wo2service.wonlyo2List(map);

			model.addAttribute("wo2",dto);
			model.addAttribute("pg", pg);
			model.addAttribute("allPage", allPage);
			model.addAttribute("block", block);
			model.addAttribute("fromPage", fromPage);
			model.addAttribute("toPage", toPage);
			
			return "/rc/woio-list";
			
		}
	   @RequestMapping(value = "woio-insertform.do", method = RequestMethod.GET)
		public String woioinsertform(Model model) {
			HashMap map = new HashMap();
			List<BusDTO> wo2blist = Wo2service.wobuslist(map);
			List<WonlyoDTO> wonlyo = Wo2service.wo2List(map);
			model.addAttribute("wlist",wonlyo);
			model.addAttribute("blist", wo2blist);
			return "/rc/woio-insertform";
		}
		@RequestMapping(value = "woio-insert.do", method = RequestMethod.POST)
		public  String woipinsert(HttpServletRequest request, Wonlyo2_DTO dto){
			System.out.println(dto.toString());
			dto.setWo2_no(request.getParameter("wo2_no"));
			dto.setWo2_iptype(request.getParameter("wo2_iptype"));
			dto.setWo2_b_no(request.getParameter("wo2_b_no"));
			dto.setWo2_type(request.getParameter("wo2_type"));
			dto.setWo2_number(Integer.parseInt(request.getParameter("wo2_number")));
			dto.setWo2_date(request.getParameter("wo2_date"));
			if(dto.getWo2_b_no().equals("버스번호")) dto.setWo2_b_no("");
			Wo2service.wonlyo2Insert(dto);
			
			System.out.println("dto를 찍겠다...");
			System.out.println(dto.toString());

			int a = Wo2service.totalselect();
			int b = Integer.parseInt(request.getParameter("wo2_number"));
			if(dto.getWo2_iptype().equals("입고")){
			System.out.println(dto.getWo2_iptype());
			int result = a+b;
			System.out.println(result);
			dto.setWo2_total(result);
			Wo2service.wonlyototal(dto);
			}else if(dto.getWo2_iptype().equals("출고")){
			int result = a-b;
			System.out.println(a);
			System.out.println(b);
			System.out.println(result);
			dto.setWo2_total(result);
//			System.out.println(a);
//			System.out.println(b);
//			System.out.println(result);
//			WonlyoDTO dto2 = new WonlyoDTO();
//			dto2.setWo_total(result);
			
			Wo2service.wonlyototal(dto);
			}
			System.out.println(dto);
		
			return "redirect:woio-list.do";
			
		}
		
		
	    @RequestMapping("wo2-delete.do")
	    public String delete(Wonlyo2_DTO dto) {
	    	Wo2service.delete(dto);
	      return "redirect:woio-list.do";
	    }
}
    


