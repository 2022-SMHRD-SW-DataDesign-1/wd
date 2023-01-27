package com.weed.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class WeedDTO {

	private String email; // 이메일
	private String company; // 업체명
	private String name; // 담당자
	private String phone; // 연락처
	private String req_type; // type : char 문의유형 
	private String req_content; // 문의사항(프로젝트 내용)
	@DateTimeFormat(pattern="yy-MM-dd")
	private Date req_dt; // 신청일자
	private String c_token; // 사용자토큰
	private String password; // 비밀번호
	private int req_seq; // 의뢰순번(의뢰신청서 순번)
	private int request_seq; // 요청 순번(이미지or스트리밍주소)
	private String ur; // 스트리밍주소
	@DateTimeFormat(pattern="yy-MM-dd HH:mm:ss")
	private Date request_time; // 요청시간
	private String image; // 이미지파일
	private int result_seq; // 결과순번
	private String object_name; // 오브젝트 이름
	private int object_dnt; //오브젝트 개수
	private String p1; // 속성
	@DateTimeFormat(pattern="yy-mm-dd HH:mm:ss")
	private Date result_time; // 분석시간
	/*
	 * DatetimeFormat 
	 * 
	 * 프로젝트 전역에서 데이트 포멧이 결정되어 있다면 어떻게 할까요?
		이전의 RequestMapping수준으로 처리한다면 반복코드를 계속 작성해야 할 것입니다.
		그럴때는 아래와 같이 Converter를 상속한 StringToDateConverter 를 작성하면 처리가 될 것입니다.
	 * 
	 * @Component public class StringToDateConverter implements Converter<String,
	 * Date> {
	 * 
	 * @Override public LocalDateTime convert(String source) { SimpleDateFormat
	 * format = new SimpleDateFormat("yyyyy-MM-dd"); return format.parse(source); }
	 * }
	 */
	
}
