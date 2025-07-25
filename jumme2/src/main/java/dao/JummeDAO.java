package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.junit.Test;

import model.entity.Jumme;
import util.DBUtil;

public class JummeDAO {
	
	public List<Jumme> findByCategory(String category) {
	    EntityManager em = DBUtil.getEntityManager();
	    List<Jumme> result = em.createQuery("SELECT j FROM Jumme j WHERE j.category = :category", Jumme.class)
	                           .setParameter("category", category)
	                           .getResultList();
	    em.close();
	    return result;
	}
}
