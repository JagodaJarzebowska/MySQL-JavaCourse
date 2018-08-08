package com.sda.java.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
public class Employee {
	private int id;
	private String name;
	private String surname;
	private String eyeColor;
	private Integer height;
	private Character sex;
	private String telephone;
	private String email;
	private String pesel;
	private Date birthday;

	public Employee(String name, String surname, String eyeColor, Integer height, Character sex, String telephone, String email, String pesel, Date birthday) {
		this.name = name;
		this.surname = surname;
		this.eyeColor = eyeColor;
		this.height = height;
		this.sex = sex;
		this.telephone = telephone;
		this.email = email;
		this.pesel = pesel;
		this.birthday = birthday;
	}
}
