package asms.common.main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import asms.common.login.service.LoginUserVO;
import asms.common.main.service.MainService;

/**
 * @PackageName asms.common.main.service.impl
 * @FileName MainServiceImpl.java
 * @Author DAE.HO.SHIN
 * @Since 2016. 3. 25.
 */
@Service("MainService")
public class MainServiceImpl implements MainService {
	
	@Resource(name="MainDAO")
	private MainDAO mainDAO;
	
	public List selectMenuList_lv1(LoginUserVO loginUserVO) throws Exception {
		return mainDAO.selectMenuList_lv1(loginUserVO);
	}
	
	public List selectMenuList_lv2(LoginUserVO loginUserVO) throws Exception { 
		return mainDAO.selectMenuList_lv2(loginUserVO);
	}
	
	public List selectMenuList_lv3(LoginUserVO loginUserVO) throws Exception { 
		return mainDAO.selectMenuList_lv3(loginUserVO);
	}
	
}
