package service;

import dao.LoanDao;
import entity.LoanInfoEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yangchen on 2015/6/18.
 */
@Transactional
@Service
public class LoanService {

    @Autowired
    private LoanDao loanDao;

    public LoanInfoEntity getLoanInfoById(int id){
        return loanDao.findLoanInfoById(id);
    }

    public void createLoan(LoanInfoEntity loanInfo){
        loanDao.createLoan(loanInfo);
    }

    public List<LoanInfoEntity> getLoanInfo(String loanFrom, int page){
        return loanDao.findLoans(loanFrom, page);
    }
}
