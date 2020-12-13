package com.team.project.course;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.project.user.UserVO;
import com.team.project.usercourse.UsercourseVO;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	CourseDAO courseDAO;
	
	@Override
	public int insertCourse(CourseVO vo) {
		return courseDAO.insertCourse(vo);
	}

	@Override
	public int deleteCourse(int seq) {
		return courseDAO.deleteCourse(seq);
	}

	@Override
	public int updateCourse(CourseVO vo) {
		return courseDAO.updateCourse(vo);
	}

	@Override
	public CourseVO getCourse(int seq) {
		return courseDAO.getCourse(seq);
	}

	@Override
	public List<CourseVO> getCourseList() {
		return courseDAO.getCourseList();
	}

	@Override
	public int applyCourse(UsercourseVO vo) {
		return courseDAO.applyCourse(vo);
	}

	@Override
	public List<CourseVO> getRegisteredCourseList(int userid) {
		List<UsercourseVO> userCourseList =  courseDAO.getRegisteredCourseList(userid);
		List<CourseVO> list = new ArrayList<CourseVO>();
		for(UsercourseVO userCourse: userCourseList) {
			CourseVO course = getCourse(userCourse.getCourseid());
			list.add(course);
		}
		return list;
	}

}
