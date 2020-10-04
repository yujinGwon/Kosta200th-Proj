package kr.kosta.bus.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kosta.bus.model.AccountDTO;
import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.CalculateDTO;
import kr.kosta.bus.model.PenaltyDTO;
import kr.kosta.bus.service.AccountService;
import kr.kosta.bus.service.CalculateService;

@Controller
@RequestMapping("/ac/*")
public class AccountController {

   @Autowired
   AccountService accountService;
   @Autowired
   CalculateService calculateService;

   // -- Account ---------------------------------

   public String tempupdate(String code, String state) {
      if (state.equals("매입"))
         return "매입";
      else if (state.equals("매출"))
         return "매출";
      else {
         if (code.equals("%")) {
            code = "%";
         } else if (code.equals("급여") || code.equals("PAY%"))
            code = "PAY%";
         else if (code.equals("정비") || code.equals("RE%"))
            code = "RE%";
         else if (code.equals("연료") || code.equals("F%"))
            code = "F%";
         else if (code.equals("범칙금") || code.equals("PEN%"))
            code = "PEN%";
         else if (code.equals("정산") || code.equals("CAL%"))
            code = "CAL%";
         }
      return code;
   }

   @RequestMapping("ac-list.do")
   public String ac_list(HttpServletRequest request, Model model) {
      String cnt_code = "전체";
      String cnt_state = "전체";
      String temp = request.getParameter("temp");

      // -------------------------------------------------------------
      String ac_state = request.getParameter("cnt_state");
      String ac_code = request.getParameter("cnt_code");
      System.out.println("ac_state" + ac_state);
      System.out.println("ac_code" + ac_code);
      System.out.println("temp" + temp);
      if (temp != null && ac_state == null && ac_code == null)
         ;
      else {
         System.out.println("----");
         if (ac_state != null && ac_state.length() > 0)
            cnt_state = ac_state;
         // ac_state.length() > 0 : request.getParameter("cnt_state"); 하면 null은 아니지만 빈 값이
         // 들어오기 때문에
         if (cnt_state.equals("전체"))
            cnt_state = "매%";

         if (ac_code != null && ac_code.length() > 0)
            cnt_code = ac_code;
         if (cnt_code.equals("전체"))
            cnt_code = "%";
         else if (cnt_code.equals("급여"))
            cnt_code = "PAY%";
         else if (cnt_code.equals("정비"))
            cnt_code = "RE%";
         else if (cnt_code.equals("연료"))
            cnt_code = "F%";
         else if (cnt_code.equals("범칙금"))
            cnt_code = "PEN%";
         else if (cnt_code.equals("정산"))
            cnt_code = "CAL%";
         temp = tempupdate(cnt_code, cnt_state);
      }
      if(temp.equals("PAY") || temp.equals("RE") || temp.equals("F") || temp.equals("PEN") || temp.equals("CAL")) temp += "%";

      System.out.println("cnt_code" + cnt_code);
      System.out.println("cnt_state" + cnt_state);
      System.out.println("temp" + temp);
      // -------------------------------------------------------------

      int pg = 1;
      String strPg = request.getParameter("pg");

      if (strPg != null) {
         pg = Integer.parseInt(strPg);
      }

      int rowSize = 10;

      int total = 0;
      List<AccountDTO> dto;
      HashMap map = new HashMap();

      if (temp.equals("매입") || temp.equals("매출")) {
         total = accountService.getAccountCountState(temp);
         map.put("cnt_state", temp);
         dto = accountService.accountListState(map);
      } else {
         total = accountService.getAccountCountCode(temp);
         map.put("cnt_code", temp);
         dto = accountService.accountListCode(map);
      }

      List<AccountDTO> subDto = new ArrayList<AccountDTO>();
      int start = (pg * rowSize) - (rowSize - 1); // 옮김
      int end = pg * rowSize; // 옮김
      if (end > total)
         end = total; // 추가
      int monthplus = 0;
      int monthminus = 0;
      int monthsum = 0;
      int dayplus = 0;
      int dayminus = 0;
      int daysum = 0;
      int subtotal = 0; // 추가
      String datetemp = "";
      if(request.getParameter("day") != null) datetemp = request.getParameter("day"); 
      else if(request.getParameter("month") != null) datetemp = request.getParameter("month");
      else if(request.getParameter("datetemp") != null) datetemp = request.getParameter("datetemp");
      System.out.println("datetemp" + datetemp);
      // DAY
      if (datetemp.length() == 10) {
         for (int i = 0; i < dto.size(); i++) {
            if (dto.get(i).getAc_date() != null) {
               String[] st = dto.get(i).getAc_date().split("-", 3);
               String[] date = datetemp.split("-", 3);
               if (st[1].equals(date[1]) && st[2].substring(0, 2).equals(date[2])) {
                  if (subtotal+1 >= start && subtotal+1 <= end) {
                     subDto.add(dto.get(i));
                  }
                  if (dto.get(i).getAc_state().equals("매출")) {
                     dayplus += dto.get(i).getAc_cost();
                  } else if (dto.get(i).getAc_state().equals("매입")) {
                     dayminus += dto.get(i).getAc_cost();
                  }
                  daysum = dayplus - dayminus;
                  // 추가
                  subtotal += 1;
               }
            }
         }
      }

      // MONTH
      else if (datetemp.length() == 2 || datetemp.length() == 3) {
         String[] mon = new String[2];
         mon = datetemp.split("월", 2); // meaning of MONTH
         System.out.println(mon[0]);
         System.out.println(mon[0].length());
         if (mon[0].length() < 2) mon[0] = "0" + mon[0];
         for (int i = 0; i < dto.size(); i++) { //전체를 돌리는 for문
            if (dto.get(i).getAc_date() != null) { // 날짜에 아무값도 없는걸 걸러냄
               String[] st = dto.get(i).getAc_date().split("-", 3); //날짜를 분리
               if (st[1].equals(mon[0])) { //날짜를 비교
                  if (subtotal+1 >= start && subtotal+1 <= end) { //페이지에 맞는 수의 레코드만 출력
                     subDto.add(dto.get(i));
                  } //페이지에 맞는 수의 레코드만 출력
                  if (dto.get(i).getAc_state().equals("매출")) {
                     monthplus += dto.get(i).getAc_cost();
                  } else if (dto.get(i).getAc_state().equals("매입")) {
                     monthminus += dto.get(i).getAc_cost();
                  }
                  monthsum = monthplus - monthminus;
                  // 추가
                  subtotal += 1;
               } //날짜를 비교
            } // 날짜에 아무값도 없는걸 걸러냄
         } //전체를 돌리는 for문
      }

      // ALL
      else {
         // 추가
         for (int i = start - 1; i < end; i++) {
            subDto.add(dto.get(i));
         }
         if (subtotal == 0)
             subtotal = total;// 추가
      }
      

      System.out.println("start : " + start + " end : " + (subtotal>end?end:subtotal));
      System.out.println("wtire count : " + subtotal);// 추가

      int allPage = (int) Math.ceil(subtotal / (double) rowSize);// 추가
      System.out.println("page count : " + allPage);

      int block = 10;
      int fromPage = ((pg - 1) / block * block) + 1;
      int toPage = ((pg - 1) / block * block) + block;

      if (toPage > allPage) {
         toPage = allPage;
      }

      // -------------------------------------------------------------

      // List<AccountDTO> selboxlist = accountService.selboxlist(map);

      model.addAttribute("accountList", subDto);
      model.addAttribute("monthplus", monthplus);
      model.addAttribute("monthminus", monthminus);
      model.addAttribute("monthsum", monthsum);
      model.addAttribute("dayplus", dayplus);
      model.addAttribute("dayminus", dayminus);
      model.addAttribute("daysum", daysum);
      model.addAttribute("datetemp", datetemp);
      // model.addAttribute("selboxlist", selboxlist);

      model.addAttribute("pg", pg);
      model.addAttribute("allPage", allPage);
      model.addAttribute("block", block);
      model.addAttribute("fromPage", fromPage);
      model.addAttribute("toPage", toPage);
      String[] t = temp.split("%", 2);
      if(t[0].equals("PAY") || t[0].equals("RE") || t[0].equals("F") || t[0].equals("PEN") || t[0].equals("CAL")) temp = t[0];
      model.addAttribute("temp", temp);
      // -------------------------------------------------------------

      return "/ac/ac-list";
   }

   @RequestMapping(value = "ac-update.do", method = RequestMethod.GET)
   public String accountUpdateform(AccountDTO dto, Model model) {

      dto = accountService.getAccount(dto.getAc_code());
      model.addAttribute("dto", dto);
      return "/ac/ac-updateform";

   }

   @RequestMapping(value = "ac-update.do", method = RequestMethod.POST)
   public String accountUpdate(AccountDTO dto, Model model) {

      accountService.accountUpdate(dto);
      return "redirect:ac-list.do";

   }

   // -- Calculate ---------------------------------
   @RequestMapping("cal-list.do")
   public String home(HttpServletRequest request, Model model) {
      int pg = 1;
      String strPg = request.getParameter("pg");

      if (strPg != null) {
         pg = Integer.parseInt(strPg);
      }

      int rowSize = 10;
      int start = (pg * rowSize) - (rowSize - 1);
      int end = pg * rowSize;

      int total = calculateService.getCalCount();
      System.out.println("start : " + start + " end : " + end);
      System.out.println("wtire count : " + total);

      int allPage = (int) Math.ceil(total / (double) rowSize);
//      int totalPage = total / rowSize + (total % rowSiez == 0 ? 0 : 1);
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

      List<CalculateDTO> dto = calculateService.calList(map);
      model.addAttribute("callist", dto);
      model.addAttribute("pg", pg);
      model.addAttribute("allPage", allPage);
      model.addAttribute("block", block);
      model.addAttribute("fromPage", fromPage);
      model.addAttribute("toPage", toPage);

      return "/ac/cal-list";
   }

   @RequestMapping(value = "cal-insertform.do", method = RequestMethod.GET)
   public String insertform(Model model) {
	   List<BusDTO> dto = calculateService.getBuslist();
	   model.addAttribute("blist", dto);
      return "/ac/cal-insertform";
   }

   @RequestMapping(value = "cal-insert.do", method = RequestMethod.POST)
   public String insert(HttpServletRequest request, Model model) {
	   if(request.getParameter("cal_date").length() < 1 || request.getParameter("cal_hap_c").length() < 1 || request.getParameter("cal_nametag").length() < 1 || 
			   request.getParameter("cal_hap_m").length() < 1 || request.getParameter("cal_total").length() < 1) {
		   model.addAttribute("reject", "입력되지 않은 항목이 있습니다.");
			model.addAttribute("url", "cal-insertform.do");
			return "/ac/ac-reject";
	   }
		else {
			CalculateDTO dto = new CalculateDTO();
			System.out.println(dto.toString());

			dto.setCal_date(request.getParameter("cal_date"));
			dto.setCal_b_no(request.getParameter("cal_b_no"));
			dto.setCal_nametag(request.getParameter("cal_nametag"));
			dto.setCal_bigo(request.getParameter("cal_bigo"));

			dto.setCal_hap_c(Integer.parseInt(request.getParameter("cal_hap_c")));
			dto.setCal_hap_m(Integer.parseInt(request.getParameter("cal_hap_m")));
			dto.setCal_total(Integer.parseInt(request.getParameter("cal_total")));

			calculateService.calInsert(dto);

			// 칼코드는 자동증가값이라 dto 셋값이 널, 그래서 방금 입력된 레코드의 칼코드를 가져오는 매퍼를 만들어서 그걸로 디티오셋 해준다.
			dto.setCal_code(calculateService.calCode());

			// 그러고나서 그 dto 를 가지고 회계(어카운트) 테이블에도 인서트 해준다.
			calculateService.accountInsert(dto);

			return "redirect:cal-list.do";
		}
   }

   @RequestMapping(value = "cal-update.do", method = RequestMethod.GET)
   public String calculateUpdateform(CalculateDTO dto, Model model) {

      dto = calculateService.getCalculate(dto.getCal_code());
      model.addAttribute("dto", dto);
      return "/ac/cal-updateform";
   }

   @RequestMapping(value = "cal-update.do", method = RequestMethod.POST)
   public String calculateUpdate(CalculateDTO dto, Model model) {
      System.out.println(dto.toString());
      calculateService.calUpdate(dto);
      return "redirect:cal-list.do";
   }
}