package co.grandcircus.hotellisting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotellisting.dao.HotelDao;
import co.grandcircus.hotellisting.entity.Hotel;

@Controller
public class HotelController {

	@Autowired
	HotelDao hotelDao;
	
	@RequestMapping("/")
	public ModelAndView showHomePage() {
		List<Hotel> hotels = hotelDao.findAll();
		return new ModelAndView("index", "hotel", hotels);
	}
	
	@PostMapping("/")
	public ModelAndView showHomePage(String city) {
		List<Hotel> hotels = hotelDao.findByCity(city);
		return new ModelAndView("results", "hotels", hotels);
	}
	
	@RequestMapping("/results")
	public ModelAndView showResults() {
		return new ModelAndView("results");
	}
}
