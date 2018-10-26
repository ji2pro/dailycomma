package com.yedam.dailycomma.lodgment;

public class Log4jAdvice {
	public void beforeLog() {
		System.out.println("[로그4j 비즈니스 로직 수행전 동작]");
	}
	public void afterthrow() {
		System.out.println("[로그4j 비즈니스 로직 수행예외 발생 동작]");
	}
	public void after() {
		System.out.println("[로그4j 비즈니스 로직 수행후 동작]");
	}
}
