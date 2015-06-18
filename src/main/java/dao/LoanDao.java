package dao;

import entity.LoanInfoEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by yangchen on 2015/6/18.
 */

@Repository
public class LoanDao {
    private EntityManager entityManager;

    @PersistenceContext
    public void setEm(EntityManager em){
        this.entityManager = em;
    }

    public LoanInfoEntity findLoanInfoById(int id){
        return entityManager.find(LoanInfoEntity.class, id);
    }

    public void createLoan(LoanInfoEntity loanInfo){
        entityManager.persist(loanInfo);
    }

    public void updateLoan(LoanInfoEntity loanInfo){
        entityManager.merge(loanInfo);
    }

    public List<LoanInfoEntity> findLoans(String loanFrom, int page){
        TypedQuery<LoanInfoEntity> query;
        query = entityManager.createQuery("select l from LoanInfoEntity l where l.loanFrom = :loanfrom", LoanInfoEntity.class );
        query.setParameter("loanfrom", loanFrom);
        query.setFirstResult(8*(page-1));
        query.setMaxResults(8);
        List<LoanInfoEntity> results = query.getResultList();
        return results;
    }
}
