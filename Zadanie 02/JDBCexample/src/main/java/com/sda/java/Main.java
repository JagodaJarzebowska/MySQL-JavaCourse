package com.sda.java;

import com.sda.java.dao.EmployeeDAO;
import com.sda.java.dto.Employee;

import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Podaj login: ");
		String login = scanner.next();
		System.out.print("Podaj hasło: ");
		String password = scanner.next();
		//List<Employee> result = new EmployeeDAO(login, password).getAll();
		//result.forEach(employee -> System.out.println(employee));
		System.out.print("Inserting employee...");
		Employee employee = Employee.builder()
				.name("Jan")
				.surname("Kowalski")
				.birthday(new Date())
				.email("text@gmail.com")
				.height(100)
				.pesel("123456789")
				.telephone("15955555")
				.sex('M')
				.eyeColor("niebieskie")
				.build();
		System.out.println("Employee key = " + new EmployeeDAO(login, password).insert(employee));
		System.out.println(employee.toString());
	}
}
