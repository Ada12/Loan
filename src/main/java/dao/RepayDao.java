package dao;

import entity.LoanInfoEntity;
import entity.RepayInfoEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by yangchen on 2015/6/18.
 */

@Repository
public class RepayDao {

    private EntityManager entityManager;

    @PersistenceContext
    public void setEntityManager(EntityManager em){
        this.entityManager = em;
    }

    public void createRepay(RepayInfoEntity repayInfo){
        entityManager.persist(repayInfo);
    }

    public List<RepayInfoEntity> findRepays(String loanFrom, int page){
        TypedQuery<RepayInfoEntity> query;
        query = entityManager.createQuery("select r from RepayInfoEntity r where r.loanFrom = :loanfrom", RepayInfoEntity.class );
        query.setParameter("loanfrom", loanFrom);
        query.setFirstResult(8*(page-1));
        query.setMaxResults(8);
        List<RepayInfoEntity> results = query.getResultList();
        return results;
    }
}
