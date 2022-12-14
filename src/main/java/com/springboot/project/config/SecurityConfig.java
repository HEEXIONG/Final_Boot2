package com.springboot.project.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity // 스프링 시큐리티 필터가 스프링 필터체인에 등록됨
@EnableGlobalMethodSecurity(securedEnabled = true,prePostEnabled = true) //secure 어노테이션 활성화,preAu
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	//해당 메서드의 리턴되는 오브젝트를  ioc에 등록 (bean등록시?)
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder(); 
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
			.antMatchers("/user/**").authenticated()
			.antMatchers("/manager/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")
			.antMatchers("/admin/**","/board/register").access("hasRole('ROLE_ADMIN')")
			.anyRequest().permitAll()
			.and()
			.formLogin()
			.loginPage("/loginForm")
			.loginProcessingUrl("/login")//login주소가 호출이 되면 시큐리티가 낚아채서 대신 로그인 진행
			.defaultSuccessUrl("/");//특정 페이지에서 로그인을하면 그페이지로 보내줌
			
	}

	
	

}
