package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TournamentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;
	private String sql;
	//토너먼트만들기
	//작품검색, 검색결과 넘겨주기 스크립트에서 받아서 확정하고, 그 값을 다시 넘겨주기
	// 1. 참여수 많은 토너먼트 15개 보이기
	public ArrayList<TournamentVO> showHotTournament(){
		j.conn();
		ArrayList<TournamentVO> hotTourList= new ArrayList<TournamentVO>();
		TournamentVO vo = null;
		
		try {
			sql = "select * from (select tournament_id, tournament_name, "
					+ "thumbnail from tournaments order by t_join desc) where rownum <= 15";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				vo = new TournamentVO(rs.getInt(1),rs.getString(2),rs.getString(3));
				hotTourList.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		
		return hotTourList;
	}
	
	
	
	
}
