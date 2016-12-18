package protect.build.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import protect.build.dao.OldBuildingMapper;
import protect.build.model.OldBuilding;

@Service
public class BuildService {
	@Autowired
	OldBuildingMapper oldBuildingMapper;
	
	public OldBuilding getOldBuildingById(int buildId){
		return oldBuildingMapper.selectByPrimaryKey(buildId);
	}
	
	public List<OldBuilding> getBuildList(){
		List<OldBuilding> list = oldBuildingMapper.selectByExample(null);
		return list;
	}

}
