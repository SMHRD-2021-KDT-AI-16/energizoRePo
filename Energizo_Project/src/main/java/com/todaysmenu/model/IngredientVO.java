package com.todaysmenu.model;

public class IngredientVO {
	
	private String food_name;
	private String name;
	private String quantity;
	
	public IngredientVO(String food_name, String name, String quantity) {
		this.food_name = food_name;
		this.name = name;
		this.quantity = quantity;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	

}
