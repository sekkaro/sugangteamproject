package com.team.project.course;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.project.usercourse.UsercourseVO;

@Repository
public class CourseDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insertCourse(CourseVO vo) {
		int result = sqlSession.insert("Course.insertCourse", vo);
		return result;
	}

	public int deleteCourse(int seq) {
		int result = sqlSession.insert("Course.deleteCourse", seq);
		return result;
	}

	public int updateCourse(CourseVO vo) {
		int result = sqlSession.insert("Course.updateCourse", vo);
		return result;
	}

	public CourseVO getCourse(int seq) {
		CourseVO vo = sqlSession.selectOne("Course.getCourse", seq);
		return vo;
	}

	public List<CourseVO> getCourseList() {
		List<CourseVO> vo = sqlSession.selectList("Course.getCourseList");
		return vo;
	}

	public int applyCourse(UsercourseVO vo) {
		int result = sqlSession.insert("Usercourse.insertUsercourse", vo);
		return result;
	}

	public List<UsercourseVO> getRegisteredCourseList(int userid) {
		List<UsercourseVO> vo = sqlSession.selectList("Usercourse.getUsercourseList", userid);
		return vo;
	}
	
}
