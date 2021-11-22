package model;

import java.util.Date;

public class TournamentVO {
	private int tournamentId;
	private String tournamentName;
	private int stage;
	private int jo;
	private int isright;
	private String tournamentFile;
	private String title;
	private Date regDate;
	private String memberId;
	private int tournamentDone;
	private int partyCnt;
	private int tLike;
	private int tShare;
	
	
	
	public TournamentVO() {
		
	}
	
	public TournamentVO(int tournamentId, String tournamentName, int stage, int jo, int isright, String tournamentFile,
			String title, Date regDate, String memberId, int tournamentDone, int partyCnt, int tLike, int tShare) {
		this.tournamentId = tournamentId;
		this.tournamentName = tournamentName;
		this.stage = stage;
		this.jo = jo;
		this.isright = isright;
		this.tournamentFile = tournamentFile;
		this.title = title;
		this.regDate = regDate;
		this.memberId = memberId;
		this.tournamentDone = tournamentDone;
		this.partyCnt = partyCnt;
		this.tLike = tLike;
		this.tShare = tShare;
	}
	public int getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(int tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
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
	public int getIsright() {
		return isright;
	}
	public void setIsright(int isright) {
		this.isright = isright;
	}
	public String getTournamentFile() {
		return tournamentFile;
	}
	public void setTournamentFile(String tournamentFile) {
		this.tournamentFile = tournamentFile;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getTournamentDone() {
		return tournamentDone;
	}
	public void setTournamentDone(int tournamentDone) {
		this.tournamentDone = tournamentDone;
	}
	public int getPartyCnt() {
		return partyCnt;
	}
	public void setPartyCnt(int partyCnt) {
		this.partyCnt = partyCnt;
	}
	public int gettLike() {
		return tLike;
	}
	public void settLike(int tLike) {
		this.tLike = tLike;
	}
	public int gettShare() {
		return tShare;
	}
	public void settShare(int tShare) {
		this.tShare = tShare;
	}
	
	
}
