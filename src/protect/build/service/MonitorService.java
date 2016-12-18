package protect.build.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import protect.build.dao.InfoDetailMapper;
import protect.build.dao.InfoMapper;
import protect.build.dao.OldBuildingMapper;
import protect.build.model.Info;
import protect.build.model.InfoExample;
import protect.build.model.Monitor;
import protect.build.model.OldBuilding;
@Service
public class MonitorService {
	
	@Autowired
	InfoMapper infoMapper;
	
	@Autowired
	InfoDetailMapper infoDetailMapper;
	
	@Autowired
	OldBuildingMapper oldBuildingMapper;
	
	public List<Monitor> getLastMonitor(){
		
		List<OldBuilding> listOldBuiding = oldBuildingMapper.selectByExample(null);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<Monitor> listMonitor = new ArrayList<Monitor>();
		for(OldBuilding oldBuilding: listOldBuiding){
			InfoExample infoExample = new InfoExample();
			infoExample.createCriteria().andBuildIdEqualTo(oldBuilding.getBuildId());
			infoExample.setOrderByClause("CreateDate DESC");
			List<Info> listInfo = infoMapper.selectByExample(infoExample);
			if(listInfo!=null&&listInfo.size()!=0){
				for(int i=0;i<1;i++){
					Info info = listInfo.get(0);
					Monitor monitor = new Monitor();
					monitor.setInfoId(info.getInfoId());
					monitor.setBiuldId(oldBuilding.getBuildId());
					monitor.setContactor(oldBuilding.getContactName());
					monitor.setDistrict(oldBuilding.getDistrict());
					monitor.setName(oldBuilding.getName());
					monitor.setPhone(oldBuilding.getContactNum());
					monitor.setProtectLevel(oldBuilding.getProtectLevel());
					monitor.setTemprature(info.getTemprature());
					monitor.setUpdateDate(simpleDateFormat.format(info.getCreateDate()));
					monitor.setLevel(info.getLevel());
					listMonitor.add(monitor);
				}
			}
			
		}
		return listMonitor;
	}
}
