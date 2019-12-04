package seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerMainController {
	private final String commend = "selMain.sel";
	private final String gotoPage = "SelMain";
	
	
	@RequestMapping(commend)
	public String main() {
		
		
		
		
		
		return gotoPage;
	}
	
	
}
