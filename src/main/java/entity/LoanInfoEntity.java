package entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by yangchen on 2015/6/17.
 */
@Entity
@Table(name = "loan_info", schema = "", catalog = "loan")
public class LoanInfoEntity {
    private int objectId;
    private Double cashDeposit;
    private Integer length;
    private Date dateEnd;
    private Double interestRate;
    private String loanCategory;
    private String methodValidiationNumber;
    private Double servicePayment;
    private Double amount;
    private String pledgeMethod;
    private Date dateStart;
    private String loanTo;
    private String loanFrom;

    @Id
    @Column(name = "object_id")
    public int getObjectId() {
        return objectId;
    }

    public void setObjectId(int objectId) {
        this.objectId = objectId;
    }

    @Basic
    @Column(name = "cash_deposit")
    public Double getCashDeposit() {
        return cashDeposit;
    }

    public void setCashDeposit(Double cashDeposit) {
        this.cashDeposit = cashDeposit;
    }

    @Basic
    @Column(name = "length")
    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    @Basic
    @Column(name = "date_end")
    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    @Basic
    @Column(name = "interest_rate")
    public Double getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(Double interestRate) {
        this.interestRate = interestRate;
    }

    @Basic
    @Column(name = "loan_category")
    public String getLoanCategory() {
        return loanCategory;
    }

    public void setLoanCategory(String loanCategory) {
        this.loanCategory = loanCategory;
    }

    @Basic
    @Column(name = "method_validiation_number")
    public String getMethodValidiationNumber() {
        return methodValidiationNumber;
    }

    public void setMethodValidiationNumber(String methodValidiationNumber) {
        this.methodValidiationNumber = methodValidiationNumber;
    }

    @Basic
    @Column(name = "service_payment")
    public Double getServicePayment() {
        return servicePayment;
    }

    public void setServicePayment(Double servicePayment) {
        this.servicePayment = servicePayment;
    }

    @Basic
    @Column(name = "amount")
    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    @Basic
    @Column(name = "pledge_method")
    public String getPledgeMethod() {
        return pledgeMethod;
    }

    public void setPledgeMethod(String pledgeMethod) {
        this.pledgeMethod = pledgeMethod;
    }

    @Basic
    @Column(name = "date_start")
    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    @Basic
    @Column(name = "loan_to")
    public String getLoanTo() {
        return loanTo;
    }

    public void setLoanTo(String loanTo) {
        this.loanTo = loanTo;
    }

    @Basic
    @Column(name = "loan_from")
    public String getLoanFrom() {
        return loanFrom;
    }

    public void setLoanFrom(String loanFrom) {
        this.loanFrom = loanFrom;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LoanInfoEntity that = (LoanInfoEntity) o;

        if (objectId != that.objectId) return false;
        if (cashDeposit != null ? !cashDeposit.equals(that.cashDeposit) : that.cashDeposit != null) return false;
        if (length != null ? !length.equals(that.length) : that.length != null) return false;
        if (dateEnd != null ? !dateEnd.equals(that.dateEnd) : that.dateEnd != null) return false;
        if (interestRate != null ? !interestRate.equals(that.interestRate) : that.interestRate != null) return false;
        if (loanCategory != null ? !loanCategory.equals(that.loanCategory) : that.loanCategory != null) return false;
        if (methodValidiationNumber != null ? !methodValidiationNumber.equals(that.methodValidiationNumber) : that.methodValidiationNumber != null)
            return false;
        if (servicePayment != null ? !servicePayment.equals(that.servicePayment) : that.servicePayment != null)
            return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (pledgeMethod != null ? !pledgeMethod.equals(that.pledgeMethod) : that.pledgeMethod != null) return false;
        if (dateStart != null ? !dateStart.equals(that.dateStart) : that.dateStart != null) return false;
        if (loanTo != null ? !loanTo.equals(that.loanTo) : that.loanTo != null) return false;
        if (loanFrom != null ? !loanFrom.equals(that.loanFrom) : that.loanFrom != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = objectId;
        result = 31 * result + (cashDeposit != null ? cashDeposit.hashCode() : 0);
        result = 31 * result + (length != null ? length.hashCode() : 0);
        result = 31 * result + (dateEnd != null ? dateEnd.hashCode() : 0);
        result = 31 * result + (interestRate != null ? interestRate.hashCode() : 0);
        result = 31 * result + (loanCategory != null ? loanCategory.hashCode() : 0);
        result = 31 * result + (methodValidiationNumber != null ? methodValidiationNumber.hashCode() : 0);
        result = 31 * result + (servicePayment != null ? servicePayment.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (pledgeMethod != null ? pledgeMethod.hashCode() : 0);
        result = 31 * result + (dateStart != null ? dateStart.hashCode() : 0);
        result = 31 * result + (loanTo != null ? loanTo.hashCode() : 0);
        result = 31 * result + (loanFrom != null ? loanFrom.hashCode() : 0);
        return result;
    }
}
