package sist.com.model;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

//@ResponseStatus ������̼��� ����ϸ� �ܼ� ó���Ӹ� �ƴ϶�, ����ڿ��� ���ϴ� response code�� ������ ���� ���ټ� �ִ�.
@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR,reason="File �̸� �� ������") //�������� ������ ������ ������ �ؽ�Ʈ�� ���� �� �ִ� .
public class UserException extends RuntimeException{
	
}
