package com.spring.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.FoodDAO;
import com.spring.DAO.UserDAO;
import com.spring.DAO.UserFoodDAO;
import com.spring.Model.Food;
import com.spring.Model.User;

@Controller
public class HomeController {

	@Autowired
	private UserFoodDAO ufdao;

	@Autowired
	private UserDAO udao;

	@Autowired
	private FoodDAO fdao;

	int userId = 0;

	Double TotalPrice = 0.00;

	Integer finalPrice = 0;

	String uname = "";

	List<String> ufood = new ArrayList<String>();

	List<Double> fprice = new ArrayList<Double>();

	@RequestMapping("/")
	protected ModelAndView Employee() {
		ModelAndView model = new ModelAndView("index");
		return model;

	}

	@RequestMapping("/index")
	protected ModelAndView GoBack() {
		ModelAndView model = new ModelAndView("index");
		return model;

	}

	@RequestMapping("/registerpage")
	public ModelAndView Register() {
		ModelAndView model = new ModelAndView("register");
		return model;

	}

	@RequestMapping("/userregister")
	public ModelAndView UserRegister(@RequestParam("rname") String rname, @RequestParam("email") String email,
			@RequestParam("rpass") String rpass) {

		List<User> ulist = udao.UserList();
		User user = new User(rname, email, rpass);
		System.out.println(rname + " \t\t " + rpass);
		if (rname.equals("") || rpass.equals("") || email.equals("")) {
			throw new NullPointerException("User Details Fields Can't Be Empty");
		} else {
			udao.CreateUser(user);
			ModelAndView model = new ModelAndView("login");
			return model;
		}
	}

	@RequestMapping("/loginpage")
	public ModelAndView LoginPage() {
		ModelAndView model = new ModelAndView("login");
		return model;

	}

	@RequestMapping("/userlogin")

	public ModelAndView UserLogin(@RequestParam("lname") String lname, @RequestParam("lpass") String lpass) {
		int size = 0;
		uname = lname;
		if (lname.equals("") || lpass.equals("")) {
			throw new NullPointerException("User Details Fields Can't Be Empty");
		} else {
			List<User> ulist = udao.LoginUser(lname, lpass);
			size = ulist.size();
			for (User uu : ulist) {
				userId = uu.getUid();
			}
			System.out.println("User Id is : " + userId);
		}
		if (size != 1) {
			throw new NullPointerException("Sorry U Dont Have An Account To Login");
		} else {

			ModelAndView model = new ModelAndView("menu");
			List<Food> flist = fdao.View_FoodItems();
			model.addObject("food", flist);
			return model;
		}

	}

	@RequestMapping("/contact")
	public ModelAndView ContactUs() {
		ModelAndView model = new ModelAndView("contact");
		return model;

	}

	@RequestMapping("/logout")
	public ModelAndView Logout() {
		ModelAndView model = new ModelAndView("logout");
		model.addObject("name", uname);
		return model;

	}

	@RequestMapping(value = "/gocart")
	public ModelAndView GoCart(@RequestParam("fname") String fname, @RequestParam("fprice") Double price) {
		ufdao.insertUserFood(userId, fname);
		ufood.add(fname);
		fprice.add(price);
		TotalPrice = TotalPrice + price;
		finalPrice = (int) Math.round(TotalPrice);
		System.out.println(finalPrice);
		System.out.println(fname + "\t\t" + "===>" + price);
		System.out.println(ufood.size());
		ModelAndView model = new ModelAndView("cart");

		model.addObject("ufood", ufood);
		model.addObject("fprice", fprice);
		model.addObject("tprice", finalPrice);
		return model;

	}

	@RequestMapping("/menu")
	public ModelAndView GoMenu() {
		ModelAndView model = new ModelAndView("menu");
		List<Food> flist = fdao.View_FoodItems();
		model.addObject("food", flist);
		return model;

	}

	@RequestMapping("/order")
	public ModelAndView Order() {
		ModelAndView model = new ModelAndView("order");
		return model;

	}

	@RequestMapping("/placeorder")
	public ModelAndView PlaceOrder() {
		ModelAndView model = new ModelAndView("placeorder");
		model.addObject("name", uname);
		return model;

	}

}
