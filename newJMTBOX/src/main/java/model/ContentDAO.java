package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ContentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 1.검색 조건에 맞는 모든 콘텐츠 기본 정보 보기
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

	// 2.최근 한달 내 작품 보기
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

	// 3.인기 작품(클릭 수 높은) 36개 보기
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
	
	//4.작품 상세보기 
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
	
	
	//5.랜덤토너먼트 만들기
	public ArrayList<ContentVO> contents() {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		ContentVO vo = null;
		try {
			j.conn();
			String sql = "SELECT * from ( select * from contents ORDER BY dbms_random.value )"
					+ " where rownum <= 16";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt("content_id"));
				vo.setTitle(rs.getString("title"));
				vo.setC_thumbnail(rs.getString("c_thumbnail"));
				vo.setC_like(rs.getInt("c_like"));
				vo.setTournament_point(rs.getInt("TOURNAMENT_POINT"));
			
				al.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			j.close();
		}
		return al;
	}
	public ArrayList<ContentVO> contents_b(String title, String c_thumbnail) {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		ContentVO vo = null;
		try {
			j.conn();
			String sql = "SELECT title, c_thumbnail from (select * from contents ORDER BY dbms_random.value) where rownum <= 100 and content_id in('3829', '3675', '3712', '3658', '3843', '3614', '3746', '3687', '3647', '3858', '3824', '3754', '3724', '3844', '3655', '3859')";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				title = rs.getString("title");
				c_thumbnail = rs.getString("c_thumbnail");
				
				vo = new ContentVO(title, c_thumbnail);
				al.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			j.close();
		}
		return al;
	}
	
	
	
}
