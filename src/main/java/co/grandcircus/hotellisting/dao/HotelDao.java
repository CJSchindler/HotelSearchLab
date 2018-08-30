package co.grandcircus.hotellisting.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.hotellisting.entity.Hotel;

@Transactional
@Repository
public class HotelDao {

	@PersistenceContext
	private EntityManager em;

	public List<Hotel> findAll() {
		return em.createQuery("from Hotel", Hotel.class)
				.getResultList();
	}
	
	public List<Hotel> findByCity(String city) {
		return em.createQuery("from Hotel where city = :c order by pricePerNight", Hotel.class)
				.setParameter("c", city)
				.getResultList();
	}
}
