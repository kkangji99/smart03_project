--create table board(
--	idx int not null auto_increment, 
--	title varchar(1000) not null,
--	content varchar(3000) not null,
--	writer varchar(1000) not null,
--	indate datetime not null default now(),
--	count int not null default 0,
--	
--	primary key(idx)
---- int : 숫자형 타입
---- auto_increment : 숫자 자동 증가 키워드
---- datetime : 날짜, 시간 넣어주는 타입
---- default : 따로 값을 넣어주지 않아도 초기값이 들어감
---- now() : sql프로그램안에서 현재시간을 넣어주는 함수
--);
select * from animal;


--임의로 내용 넣기
--insert into board(title,content,writer)
--values("Spring 게시판","오늘 처음!!","강혜지짱짱");



