package protect.build.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import protect.build.dao.InfoDetailMapper;
import protect.build.model.InfoDetail;
import protect.build.model.InfoDetailExample;

@Service
public class InfoDetailService {
	@Autowired
	InfoDetailMapper infoDetailMapper;
	
	public boolean addInfoDetail(InfoDetail model){
		int iRet = -1;
		iRet = infoDetailMapper.insert(model);
		if(iRet >0){
			return true;
		}
		return false;
	}
	
	public List<InfoDetail> getInfoDetailByInfoId(String infoId){
		InfoDetailExample example = new InfoDetailExample();
		example.createCriteria().andInfoIdEqualTo(infoId);
		List<InfoDetail> list = infoDetailMapper.selectByExample(example);
		return list;
	}
}

