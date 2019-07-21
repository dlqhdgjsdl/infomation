package sist.com.model;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

//@ResponseStatus 어노테이션을 사용하면 단순 처리뿐만 아니라, 사용자에게 원하는 response code와 원인을 리턴 해줄수 있다.
@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR,reason="File 이름 잘 쓰세요") //서버에서 에러가 났을때 보여줄 텍스트를 적을 수 있다 .
public class UserException extends RuntimeException{
	
}
