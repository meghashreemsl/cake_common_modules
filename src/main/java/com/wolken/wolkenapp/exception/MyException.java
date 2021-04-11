package com.wolken.wolkenapp.exception;

public class MyException extends Exception{
	@Override
	public String getMessage() {
		return "enter valid input";
	}

}
