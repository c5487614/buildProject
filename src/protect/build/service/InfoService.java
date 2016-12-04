package protect.build.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import protect.build.dao.InfoMapper;
import protect.build.model.Info;

@Service
public class InfoService {
	
	@Autowired
	InfoMapper infoMapper;
	
	public boolean addInfo(Info model){
		infoMapper.insert(model);
		return true;
	}
	
	public Info getInfoById(String infoId){
		Info info = infoMapper.selectByPrimaryKey(infoId);
		return info;
	}
	public List<Info> getInfoList(){
		return null;
	}
}
