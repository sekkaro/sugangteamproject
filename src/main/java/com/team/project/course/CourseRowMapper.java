package com.team.project.course;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CourseRowMapper implements RowMapper<CourseVO> {

	@Override
	public CourseVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		CourseVO vo = new CourseVO();
		vo.setSeq(rs.getInt("seq"));
		vo.setCode(rs.getString("code"));
		vo.setSection(rs.getByte("section"));
		vo.setName(rs.getString("name"));
		vo.setCredits(rs.getByte("credits"));
		vo.setTime(rs.getString("time"));
		vo.setRoom(rs.getString("room"));
		vo.setCapacity(rs.getInt("capacity"));
		vo.setProfessor(rs.getString("professor"));
		vo.setType(rs.getByte("type"));
		vo.setRegdate(rs.getDate("regdate"));
		return vo;
	}

}
