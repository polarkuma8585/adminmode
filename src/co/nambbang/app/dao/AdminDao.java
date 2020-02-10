package co.nambbang.app.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import co.nambbang.app.dto.AdminMainDto;
import co.nambbang.app.dto.NoticeDto;

public class AdminDao extends DAO {

	public AdminDao () {
		super();
	}
	
	public ArrayList<NoticeDto> NselectAll(){
		ArrayList<NoticeDto> list = new ArrayList<>();
		
		String sql = "select notice_no, notice_sj, notice_cn, writing_de, rdcnt"
				+ " from mngr_notice";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {				
				NoticeDto dto = new NoticeDto();
				dto.setnNo(rs.getInt("notice_no"));
				dto.setnSj(rs.getString("notice_sj"));
				dto.setnCn(rs.getString("notice_cn"));
				dto.setnDe(rs.getDate("writing_de"));
				dto.setnCnt(rs.getInt("rdcnt"));
				list.add(dto);
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}		
		return list;
	}
	
	
	public AdminMainDto selectAll(){
		AdminMainDto dto = new AdminMainDto();
		String sql = "select " + 
				"(select count(o.order_id) " + 
				"from goods_sle g, orders o " + 
				"where g.sle_id = o.sle_id " + 
				"and to_char(rgsde, 'rr/mm/dd') = to_char(sysdate, 'rr/mm/dd')) as order_cnt," + 
				"(select sum(g.sle_pc*o.order_qy) " + 
				"from goods_sle g, orders o " + 
				"where g.sle_id = o.sle_id " + 
				"and to_char(rgsde, 'rr/mm/dd') = to_char(sysdate, 'rr/mm/dd')) as order_sum," + 
				"(select count(setle_no) " + 
				"from setle " + 
				"where to_char(setle_de, 'rr/mm/dd') = to_char(sysdate, 'rr/mm/dd')) as setle_cnt," + 
				"(select sum(setle_amount)" + 
				"from setle" + 
				"where to_char(setle_de, 'rr/mm/dd') = to_char(sysdate, 'rr/mm/dd')) as setle_sum," + 
				"(select count(u.setle_no) " + 
				"from user_refnd u, setle s" + 
				"where u.setle_no = s.setle_no" + 
				"and to_char(s.setle_de,'rr/mm/dd') = to_char(sysdate, 'rr/mm/dd')) as refund_cnt," + 
				"(select sum(s.setle_amount) " + 
				"from user_refnd u, setle s " + 
				"where u.setle_no = s.setle_no " + 
				"and to_char(s.setle_de,'rr/mm/dd') = to_char(sysdate, 'rr/mm/dd')) as refund_sum," + 
				"(select count(goods_id) " + 
				"from goods_regist) as goods_cnt," + 
				"(select count(s.seler_id) " + 
				"from goods_sle g, goods_regist r, seler s " + 
				"where g.goods_id = r.goods_id " + 
				"and r.seler_id  = s.seler_id " + 
				"and sle_begin_time < sysdate " + 
				"and sle_end_time > sysdate) as selling_seler," + 
				"(select count(sle_end_time) " + 
				"from goods_sle " + 
				"where sle_end_time between sysdate+1/24/2 and sysdate) as about_over_goods," + 
				"(select count(user_id) " + 
				"from users) as user_cnt," + 
				"(select count(seler) " + 
				"from seler) as seler_cnt," + 
				"(select count(sle_id) " + 
				"from goods_cancl " + 
				"where cancl_de = sysdate) as goods_cancl," + 
				"(select sum(g.sle_qy*g.sle_pc) " + 
				"from goods_sle g, goods_cancl c " + 
				"where g.sle_id = c.sle_id " + 
				"and c.cancl_de = sysdate) as goods_cancl_sum " + 
				"from dual";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new AdminMainDto();
				dto.setOrderCnt(rs.getInt("order_cnt"));
				dto.setOrderSum(rs.getInt("order_sum"));
				dto.setSelerCnt(rs.getInt("setle_cnt"));
				dto.setSetleSum(rs.getInt("setle_sum"));
				dto.setRefundCnt(rs.getInt("refund_cnt"));
				dto.setRefundSum(rs.getInt("refund_sum"));
				dto.setGoodsCnt(rs.getInt("goods_cnt"));
				dto.setSellingSeler(rs.getInt("selling_seler"));
				dto.setOverGoods(rs.getInt("about_over_goods"));
				dto.setUserCnt(rs.getInt("user_cnt"));
				dto.setSelerCnt(rs.getInt("seler_cnt"));
				dto.setGoodsCanclCnt(rs.getInt("goods_cancl_cnt"));
				dto.setGoodsCanclSum(rs.getInt("goods_cancl_sum"));
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
}
