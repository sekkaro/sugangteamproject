package com.team.project.course;

import java.util.List;

import com.team.project.user.UserVO;
import com.team.project.usercourse.UsercourseVO;

public interface CourseService {
	public int insertCourse(CourseVO vo);
	public int deleteCourse(int seq);
	public int updateCourse(CourseVO vo);
	public CourseVO getCourse(int seq);
	public List<CourseVO> getCourseList();
	public int applyCourse(UsercourseVO vo);
	public List<CourseVO> getRegisteredCourseList(int userid);
}
