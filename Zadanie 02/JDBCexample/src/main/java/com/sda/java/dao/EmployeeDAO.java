package com.sda.java.dao;

import com.sda.java.dto.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
	private static final String ID = "id_pracownika";
	private static final String NAME = "imie";
	private static final String SURNAME = "nazwisko";
	private static final String HEIGHT = "wzrost";
	private static final String SEX = "plec";
	private static final String TELEPHONE = "telefon";
	private static final String EMAIL = "email";
	private static final String PESEL = "pesel";
	private static final String BIRTHDAY = "data_urodzin";
	private static final String CONNECTION_STRING = "jdbc:mysql://localhost:3306/j1b?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

//	private static final String insertQuery = "INSERT INTO pracownicy VALUES(?,?,?,?,?,?,?,?,?)";
	private static final String insertQuery = "INSERT INTO pracownicy (imie,nazwisko,wzrost,plec,telefon,email,pesel,data_urodzin,kolor_oczu) VALUES(?,?,?,?,?,?,?,?,?)";
	private static final String updateQuery = "UPDATE pracownicy SET ";
	private static final String findQueryById = "SELECT * FROM pracownicy WHERE id_pracownika=?";
	private static final String removeQueryById = "REMOVE FROM pracownicy WHERE id_pracownika=?";


	private String login;
	private String password;

	public EmployeeDAO(String login, String password) {
		this.login = login;
		this.password = password;
	}

	public List<Employee> getAll() {
		List<Employee> result = new ArrayList<>();
		try {
			try (Connection con = DriverManager.getConnection(CONNECTION_STRING, login, password)) {
				try (Statement statement = con.createStatement()) {
					String tableSql = "SELECT * FROM pracownicy";
					try (ResultSet resultSet = statement.executeQuery(tableSql)) {
						while (resultSet.next()) {
							Employee employee = Employee.builder()
									.id(resultSet.getInt("id_pracownika"))
									.name(resultSet.getString("imie"))
									.surname(resultSet.getString("nazwisko"))
									.height(resultSet.getInt("wzrost"))
									.sex(resultSet.getString("plec").charAt(0))
									.telephone(resultSet.getString("telefon"))
									.email(resultSet.getString("email"))
									.pesel(resultSet.getString("pesel"))
									.birthday(resultSet.getDate("data_urodzin"))
									.build();
							result.add(employee);
						}
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Integer insert(Employee employee) {
		Integer result = null;
		try {
			try (Connection con = DriverManager.getConnection(CONNECTION_STRING, login, password)) {
				try (PreparedStatement statement = con.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS)) {
					statement.setString(1, employee.getName());
					statement.setString(2, employee.getSurname());
					statement.setInt(3, employee.getHeight());
					statement.setString(4, employee.getSex().toString());
					statement.setString(5, employee.getTelephone());
					statement.setString(6, employee.getEmail());
					statement.setString(7, employee.getPesel());
					statement.setDate(8, new java.sql.Date(employee.getBirthday().getTime()));
					statement.setString(9, employee.getEyeColor());

					statement.executeUpdate();
					try (ResultSet rs = statement.getGeneratedKeys()) {
						if (rs.next()) {
							result = rs.getInt(1);
						}
					}
				} employee.setId(result);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public Employee find(String id) {
		Employee result = null;
		try {
			try (Connection con = DriverManager.getConnection(CONNECTION_STRING, login, password)) {
				try (PreparedStatement statement = con.prepareStatement(findQueryById)) {
					statement.setString(1, id);
					try (ResultSet resultSet = statement.executeQuery()) {
						while (resultSet.next()) {
							Employee employee = Employee.builder()
									.id(resultSet.getInt(ID))
									.name(resultSet.getString(NAME))
									.surname(resultSet.getString(SURNAME))
									.height(resultSet.getInt(HEIGHT))
									.sex(resultSet.getString(SEX).charAt(0))
									.telephone(resultSet.getString(TELEPHONE))
									.email(resultSet.getString(EMAIL))
									.pesel(resultSet.getString(PESEL))
									.birthday(resultSet.getDate(BIRTHDAY))
									.build();
							result = employee;
						}
					}
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean remove(String id) {
		boolean result = false;
		try {
			try (Connection con = DriverManager.getConnection(CONNECTION_STRING, login, password)) {
				try (PreparedStatement statement = con.prepareStatement(removeQueryById)) {
					statement.setString(1, id);
					result = statement.execute();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
