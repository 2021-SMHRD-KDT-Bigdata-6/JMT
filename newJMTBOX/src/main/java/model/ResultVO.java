package model;

import java.util.Date;

public class ResultVO {
	private int resultId;
	private int tournamentId;
	private String memberId;
	private Date gameDate;
	private int stage;
	private int jo;
	private int isRight;
	private int contentId;
	private int isWin;
	private int resultDone;
	
	
	
	public ResultVO() {
		
	}
	
	public ResultVO(int resultId, int tournamentId, String memberId, Date gameDate, int stage, int jo, int isRight,
			int contentId, int isWin, int resultDone) {
		this.resultId = resultId;
		this.tournamentId = tournamentId;
		this.memberId = memberId;
		this.gameDate = gameDate;
		this.stage = stage;
		this.jo = jo;
		this.isRight = isRight;
		this.contentId = contentId;
		this.isWin = isWin;
		this.resultDone = resultDone;
	}
	public int getResultId() {
		return resultId;
	}
	public void setResultId(int resultId) {
		this.resultId = resultId;
	}
	public int getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(int tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public int getStage() {
		return stage;
	}
	public void setStage(int stage) {
		this.stage = stage;
	}
	public int getJo() {
		return jo;
	}
	public void setJo(int jo) {
		this.jo = jo;
	}
	public int getisRight() {
		return isRight;
	}
	public void setisRight(int isRight) {
		this.isRight = isRight;
	}
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public int getisWin() {
		return isWin;
	}
	public void setisWin(int isWin) {
		this.isWin = isWin;
	}
	public int getResultDone() {
		return resultDone;
	}
	public void setResultDone(int resultDone) {
		this.resultDone = resultDone;
	}
	
	
}
