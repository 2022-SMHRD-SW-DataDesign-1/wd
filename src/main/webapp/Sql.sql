select * from t_member

insert into T_MEMBER values ('hgy4546@naver.com','1234','wd')

select * from t_request;

INSERT INTO t_request(email, req_type, req_content, req_dt, name, phone, company) 
VALUES ('test', 'b', 'req_content 2', sysdate, 'name 2', 'phone 2','위드');

select * from t_client  where email = #{11} , password = #{11};