package asms.common.asset.service;

/**
 * @PackageName asms.common.asset.service
 * @FileName AssetSequenceVO.java
 * @Author DAE.HO.SHIN
 * @Since 2016. 3. 30.
 */
public class AssetSequenceVO {
	
	private int seq_id;		// 시퀀스 아이디
	private String seq_dt;		// 시퀀스 날짜
	
	public int getSeq_id() {
		return seq_id;
	}
	public void setSeq_id(int seq_id) {
		this.seq_id = seq_id;
	}
	public String getSeq_dt() {
		return seq_dt;
	}
	public void setSeq_dt(String seq_dt) {
		this.seq_dt = seq_dt;
	}
	
}
