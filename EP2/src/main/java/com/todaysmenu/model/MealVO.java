package com.todaysmenu.model;

public class MealVO {
	
	private String meal_id;
	private String meal_time;
	private String food_name;
	
	public MealVO(String meal_id, String meal_time, String food_name) {
		this.meal_id = meal_id;
		this.meal_time = meal_time;
		this.food_name = food_name;
	}

	public String getMeal_id() {
		return meal_id;
	}

	public void setMeal_id(String meal_id) {
		this.meal_id = meal_id;
	}

	public String getMeal_time() {
		return meal_time;
	}

	public void setMeal_time(String meal_time) {
		this.meal_time = meal_time;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	
	
	

}
