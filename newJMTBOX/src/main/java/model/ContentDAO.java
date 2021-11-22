package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ContentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 검색 조건에 맞는 모든 콘텐츠 기본 정보 보기
	// content_id, title, c_thumbnail, c_like, tournament_point
	public ArrayList<ContentVO> showContentsByFilters(String where) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();

		try {
			String sql = "select content_id, title, c_thumbnail, c_like, tournament_point from Contents " + where;

			psmt = j.conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));

				ContentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}

	// 최근 한달 내 작품 보기
	// content_id, title, c_thumbnail, c_like, tournament_point
	public ArrayList<ContentVO> showLatestContents() {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();

		try {
			String sql = "select content_id, title, c_thumbnail, c_like, tournament_point from Contents where release >= trunc(add_months(sysdate,-1)) order by release desc";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));

				ContentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}

	// 인기 작품(클릭 수 높은) 36개 보기
	// content_id, title, c_thumbnail, c_like, tournament_point
	public ArrayList<ContentVO> showHotContents() {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();

		try {
			String sql = "select * from (select content_id, title, c_thumbnail, c_like, tournament_point, c_view from Contents order by c_view desc) where rownum <= 36";

			psmt = j.conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));

				ContentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}
	
	//작품 상세보기 
	public ContentVO showContentInfo(String content_id) {
		
		j.conn();
		ContentVO vo = null;
		
		try {
			String sql = "select * from contents where content_id = ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, content_id);
			rs = psmt.executeQuery();
			
			vo = new ContentVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getInt(13), rs.getInt(14), rs.getString(15), rs.getString(17));
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			j.close();
		}
		
		return vo;
	}
	
	
	
 
	/*
	
	*/
	
	
}
