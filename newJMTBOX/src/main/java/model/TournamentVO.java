package model;

import java.util.Date;

public class TournamentVO {
	private int tournamentId;
	private String tournamentName;
	private int stage;
	private int jo;
	private int isright;
	private String tournamentFile;
	//private String title;
	private Date t_Date;
	private int memberId;
	//private int tournamentDone;
	private int partyCnt;
	private int tLike;
	private int tShare;
	private int tournament_point;
	private String thumbnail;
	
	
	
	public TournamentVO() {
		
	}

	

	public TournamentVO(int tournamentId, String tournamentName, String thumbnail) {
		super();
		this.tournamentId = tournamentId;
		this.tournamentName = tournamentName;
		this.thumbnail = thumbnail;
	}



	public TournamentVO(int stage, int jo, int isright, String tournamentFile) {
		super();
		this.stage = stage;
		this.jo = jo;
		this.isright = isright;
		this.tournamentFile = tournamentFile;
	}



	public TournamentVO(int tournamentId, String tournamentName, int stage, int jo, int isright, String tournamentFile,
			Date t_Date, int memberId, int partyCnt, int tLike, int tShare, int tournament_point) {
		super();
		this.tournamentId = tournamentId;
		this.tournamentName = tournamentName;
		this.stage = stage;
		this.jo = jo;
		this.isright = isright;
		this.tournamentFile = tournamentFile;
		this.t_Date = t_Date;
		this.memberId = memberId;
		this.partyCnt = partyCnt;
		this.tLike = tLike;
		this.tShare = tShare;
		this.tournament_point = tournament_point;
	}



	public String getThumbnail() {
		return thumbnail;
	}



	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
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



	public Date getT_Date() {
		return t_Date;
	}



	public void setT_Date(Date t_Date) {
		this.t_Date = t_Date;
	}



	public int getMemberId() {
		return memberId;
	}



	public void setMemberId(int memberId) {
		this.memberId = memberId;
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



	public int getTournament_point() {
		return tournament_point;
	}



	public void setTournament_point(int tournament_point) {
		this.tournament_point = tournament_point;
	}
	
	
}
