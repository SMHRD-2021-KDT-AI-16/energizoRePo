package com.todaysmenu.model;

public class RecipeVO {
	
	private String food_name;
	private String step_num;
	private String description;
	
	public RecipeVO(String food_name, String step_num, String description) {
		this.food_name = food_name;
		this.step_num = step_num;
		this.description = description;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getStep_num() {
		return step_num;
	}

	public void setStep_num(String step_num) {
		this.step_num = step_num;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
