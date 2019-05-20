package com.travelmaker.stravel.member.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
/*import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.travelmaker.stravel.member.model.service.MemberService;
import com.travelmaker.stravel.memeber.model.vo.Member;

@Controller
public class MemberController {
	//해당 클래스와 관련된 로그를 출력 또는 저장하기 위한 로그 객체 생성 
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//MemberService DI
	@Autowired
	private MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptpasswordEncoder;
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMethod(Member member, 
			HttpSession session, SessionStatus status, Model model) {
		logger.info("login.do run.");
		Member loginMember = memberService.selectLogin(member);	
		if(loginMember != null) {
		//HttpSession session = request.getSession();
		//메소드 매개변수로 선언하면 자동 생성됨.
		session.setAttribute("loginMember", loginMember);
		status.setComplete();
		
		return "home";
	}else {
		model.addAttribute("message", "로그인실패!");
		return "common/error";
		}
	}
	
	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request) {
		logger.info("logout.do run.");
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			session.invalidate();
		}
		
		return "home";
	}
	
	@RequestMapping("enroll.do")
	public String moveEnrollpage() {
		return "member/enrollPage";
	}
	
	@RequestMapping(value="minsert.do", method=RequestMethod.POST)
	public String insertMember(Member member, 
			@RequestParam(name="photo", required=false) MultipartFile mphoto, HttpServletRequest request,
			Model model) {
		logger.info("member : " + member);
		logger.info("프로필사진 : " + mphoto);
				
		//폴더에 전송온 파일 저장 처리
		String savePath = request.getSession().getServletContext()
				.getRealPath("resources/files/photo");
		
		try {
			if(mphoto != null) {
			mphoto.transferTo(new File(savePath + "\\" + mphoto.getOriginalFilename()));
			}
		} catch (Exception e) {			
			e.printStackTrace();
		}
		
		
		member.setUserpwd(
				bcryptpasswordEncoder.encode(member.getUserpwd()));		
		
		if(memberService.insertMember(member) > 0)		
		return "home";
		
		else {
			model.addAttribute("message", "회원 가입 실패!");
			return "common/error";
		}
	}
	
	@RequestMapping("myinfo.do")
	public ModelAndView selectMember(ModelAndView mv, /*HttpServletRequest request*/
			@RequestParam(name="useremail") String useremail) {
		//ModelAndView mv = new ModelAndView();
		//String useremail = request.getParameter("useremail");
		logger.info("myinfo.do run.");
		Member member = memberService.selectMember(useremail);
		
		mv.addObject("member", member);
		//request.setAttribute("member", member);
		mv.setViewName("member/memberDetailView");
		
		return mv;
	}
	
	@RequestMapping("mdel.do")
	public String memberDelete(Model model,
			@RequestParam(name="useremail") String useremail) {
		logger.info("model.do run.");
		int result = memberService.deleteMember(useremail);
		if(result > 0)
			return "redirect:logout.do";
		else {
			model.addAttribute("message", "장비를 정지합니다, 앙대!");
			return "common/error";
		}
		
	}
		
	@RequestMapping("mupview.do")
	public ModelAndView updateMember(ModelAndView mv,
			@RequestParam(name="useremail") String useremail) {
		
		Member member = memberService.selectMember(useremail);
		
		if(member != null) {
			mv.addObject("member", member);
			mv.setViewName("member/memberUpdatePage");				
		}else {
			mv.addObject("message", "회원정보 조회 실패!");
			mv.setViewName("common/error");
		}
		
		return mv;
	}
	
	@RequestMapping(value="mupdate.do", method=RequestMethod.POST)
	public String updateMember(Member member,
				Model model) {		
		
		int result = memberService.updateMember(member);		
		if(result > 0) {
			return "redirect:myinfo.do?useremail=" + member.getUseremail();			
		}else {
			model.addAttribute("message", "회원정보 수정 실패!");
		return "common/error";
		}		
		
	}
		
}