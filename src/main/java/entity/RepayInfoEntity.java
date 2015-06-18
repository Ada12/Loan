package entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by yangchen on 2015/6/17.
 */
@Entity
@Table(name = "repay_info", schema = "", catalog = "loan")
public class RepayInfoEntity {
    private int objectId;
    private String paybackAmount;
    private String length;
    private Date dateEarly;
    private Date dateEnd;
    private Double interestRate;
    private Double managementPayment;
    private Double servicePayment;
    private Double amount;
    private String paybackCategory;
    private Double cashDeposit;
    private Date dateStart;
    private Integer flag;
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
    @Column(name = "payback_amount")
    public String getPaybackAmount() {
        return paybackAmount;
    }

    public void setPaybackAmount(String paybackAmount) {
        this.paybackAmount = paybackAmount;
    }

    @Basic
    @Column(name = "length")
    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    @Basic
    @Column(name = "date_early")
    public Date getDateEarly() {
        return dateEarly;
    }

    public void setDateEarly(Date dateEarly) {
        this.dateEarly = dateEarly;
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
    @Column(name = "management_payment")
    public Double getManagementPayment() {
        return managementPayment;
    }

    public void setManagementPayment(Double managementPayment) {
        this.managementPayment = managementPayment;
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
    @Column(name = "payback_category")
    public String getPaybackCategory() {
        return paybackCategory;
    }

    public void setPaybackCategory(String paybackCategory) {
        this.paybackCategory = paybackCategory;
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
    @Column(name = "date_start")
    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    @Basic
    @Column(name = "flag")
    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
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

        RepayInfoEntity that = (RepayInfoEntity) o;

        if (objectId != that.objectId) return false;
        if (paybackAmount != null ? !paybackAmount.equals(that.paybackAmount) : that.paybackAmount != null)
            return false;
        if (length != null ? !length.equals(that.length) : that.length != null) return false;
        if (dateEarly != null ? !dateEarly.equals(that.dateEarly) : that.dateEarly != null) return false;
        if (dateEnd != null ? !dateEnd.equals(that.dateEnd) : that.dateEnd != null) return false;
        if (interestRate != null ? !interestRate.equals(that.interestRate) : that.interestRate != null) return false;
        if (managementPayment != null ? !managementPayment.equals(that.managementPayment) : that.managementPayment != null)
            return false;
        if (servicePayment != null ? !servicePayment.equals(that.servicePayment) : that.servicePayment != null)
            return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (paybackCategory != null ? !paybackCategory.equals(that.paybackCategory) : that.paybackCategory != null)
            return false;
        if (cashDeposit != null ? !cashDeposit.equals(that.cashDeposit) : that.cashDeposit != null) return false;
        if (dateStart != null ? !dateStart.equals(that.dateStart) : that.dateStart != null) return false;
        if (flag != null ? !flag.equals(that.flag) : that.flag != null) return false;
        if (loanFrom != null ? !loanFrom.equals(that.loanFrom) : that.loanFrom != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = objectId;
        result = 31 * result + (paybackAmount != null ? paybackAmount.hashCode() : 0);
        result = 31 * result + (length != null ? length.hashCode() : 0);
        result = 31 * result + (dateEarly != null ? dateEarly.hashCode() : 0);
        result = 31 * result + (dateEnd != null ? dateEnd.hashCode() : 0);
        result = 31 * result + (interestRate != null ? interestRate.hashCode() : 0);
        result = 31 * result + (managementPayment != null ? managementPayment.hashCode() : 0);
        result = 31 * result + (servicePayment != null ? servicePayment.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (paybackCategory != null ? paybackCategory.hashCode() : 0);
        result = 31 * result + (cashDeposit != null ? cashDeposit.hashCode() : 0);
        result = 31 * result + (dateStart != null ? dateStart.hashCode() : 0);
        result = 31 * result + (flag != null ? flag.hashCode() : 0);
        result = 31 * result + (loanFrom != null ? loanFrom.hashCode() : 0);
        return result;
    }
}
