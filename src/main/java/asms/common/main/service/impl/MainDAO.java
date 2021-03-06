package asms.common.main.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import asms.common.login.service.LoginUserVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * @PackageName asms.common.main.service.impl
 * @FileName MainDAO.java
 * @Author DAE.HO.SHIN
 * @Since 2016. 3. 25.
 */
@Repository("MainDAO")
public class MainDAO extends EgovAbstractDAO{
	
	public List selectMenuList_lv1(LoginUserVO loginUserVO) throws Exception {
		return list("selectMenuList_lv1", loginUserVO);
    }
	
	public List selectMenuList_lv2(LoginUserVO loginUserVO) throws Exception {
		return list("selectMenuList_lv2", loginUserVO);
    }
	
	public List selectMenuList_lv3(LoginUserVO loginUserVO) throws Exception {
		return list("selectMenuList_lv3", loginUserVO);
    }
	
}
