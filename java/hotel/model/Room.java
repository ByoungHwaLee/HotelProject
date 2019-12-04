package hotel.model;

public class Room { 
	
	private String[] r_type;
	private int[] r_price;
	private String[] r_breakfast;
	private int[] r_person;
	private int[] r_stock;
	
	private String type;
	private int price;
	private int person;
	private int stock;
	private String breakfast;
	private String hname;
	
	
	
	public Room() {
		super();
		
	}
	public Room(String type, int price, int person, int stock, String breakfast, String hname) {
		super();
		this.type = type;
		this.price = price;
		this.person = person;
		this.stock = stock;
		this.breakfast = breakfast;
		this.hname = hname;
	}
	public String[] getR_type() {
		return r_type;
	}
	public void setR_type(String[] r_type) {
		this.r_type = r_type;
	}
	public int[] getR_price() {
		return r_price;
	}
	public void setR_price(int[] r_price) {
		this.r_price = r_price;
	}
	public String[] getR_breakfast() {
		return r_breakfast;
	}
	public void setR_breakfast(String[] r_breakfast) {
		this.r_breakfast = r_breakfast;
	}
	public int[] getR_person() {
		return r_person;
	}
	public void setR_person(int[] r_person) {
		this.r_person = r_person;
	}
	public int[] getR_stock() {
		return r_stock;
	}
	public void setR_stock(int[] r_stock) {
		this.r_stock = r_stock;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPerson() {
		return person;
	}
	public void setPerson(int person) {
		this.person = person;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	
	
	
	
}