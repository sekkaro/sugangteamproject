package com.team.project.course;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.project.user.UserVO;
import com.team.project.usercourse.UsercourseVO;

@Controller
@RequestMapping(value="/course")
public class CourseController {
	
	@Autowired
	CourseService courseService;
	
	@RequestMapping(value ="/list", method= RequestMethod.GET)
	public String courselist(HttpSession session, Model model) {
		model.addAttribute("list", courseService.getCourseList());
		UserVO user = (UserVO) session.getAttribute("login");
		model.addAttribute("user", user);
		return "list";
	}
	
	@RequestMapping(value ="/register", method= RequestMethod.GET)
	public String addPost(HttpSession session, Model model) {
		UserVO user = (UserVO) session.getAttribute("login");
		model.addAttribute("user", user);
		if(user.getType() == 0) {
			return "addpostform";
		} else {
			return "redirect:list";
		}
	}
	
	@RequestMapping(value ="/addok", method= RequestMethod.POST)
	public String addPostOK(CourseVO vo) {
		if(courseService.insertCourse(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value ="/editform/{id}", method= RequestMethod.GET)
	public String editPost(HttpSession session, @PathVariable("id") int id, Model model) {
		CourseVO courseVO=courseService.getCourse(id);
		model.addAttribute("u",courseVO);
		UserVO user = (UserVO) session.getAttribute("login");
		model.addAttribute("user", user);
		if(user.getType() == 0) {
			return "editform";
		} else {
			return "redirect:../list";
		}
	}
	
	@RequestMapping(value ="/editok", method= RequestMethod.POST)
	public String editPostOk(CourseVO vo) {
		if (courseService.updateCourse(vo) == 0) {
			System.out.println("데이터 수정 실패 ");
		} else
			System.out.println("데이터 수정 성공!!");
		return "redirect:list";
	}
	
	@RequestMapping(value ="/deleteok/{id}", method= RequestMethod.GET)
	public String deletePostOk(HttpSession session, @PathVariable("id") int id) {
		UserVO user = (UserVO) session.getAttribute("login");
		if(user.getType() == 1) {
			return "redirect:../list";
		}
		if(courseService.deleteCourse(id)==0)
			System.out.println("데이터 삭제 실패");
		else 
			System.out.println("데이터 삭제 성공!!");
	
		return "redirect:../list";
	}
	
	@RequestMapping(value="/applyform/{id}", method=RequestMethod.GET)
	public String applyCourse(HttpSession session, @PathVariable("id") int id, Model model) {
		UserVO user = (UserVO) session.getAttribute("login");
		model.addAttribute("user", user);
		CourseVO courseVO=courseService.getCourse(id);
		model.addAttribute("u",courseVO);
		if(user.getType() == 1) {
			return "applyform";
		}
		return "redirect:../list";
	}
	
	@RequestMapping(value ="/applyok", method= RequestMethod.POST)
	public String ApplyCourseOk(UsercourseVO vo) {
		if (courseService.applyCourse(vo) == 0) {
			System.out.println("수강신청 실패");
		} else
			System.out.println("수강신청 성공!!");
		return "redirect:mypage";
	}
	
	@RequestMapping(value ="/mypage", method= RequestMethod.GET)
	public String usercourselist(HttpSession session, Model model) {
		UserVO user = (UserVO) session.getAttribute("login");
		model.addAttribute("user", user);
		model.addAttribute("courses", courseService.getRegisteredCourseList(user.getSid()));
		return "mypage";
	}
	
}
