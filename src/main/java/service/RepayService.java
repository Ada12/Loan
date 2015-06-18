package service;

import dao.RepayDao;
import entity.RepayInfoEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yangchen on 2015/6/18.
 */
@Transactional
@Service
public class RepayService {

    @Autowired
    private RepayDao repayDao;

    public void createRepay(RepayInfoEntity repayInfo){
        repayDao.createRepay(repayInfo);
    }

    public List<RepayInfoEntity> getRepayInfo(String repayInfo, int page){
        return repayDao.findRepays(repayInfo, page);
    }
}
