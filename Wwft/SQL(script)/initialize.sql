 DROP TABLE ACTIVITY_POINT;
 DROP TABLE BUCKETLIST;
 DROP TABLE CALENDER;
 DROP TABLE COMMENTS;
 DROP TABLE FOREST;
 DROP TABLE FOREST_NOTICE;
 DROP TABLE IMAGE_AND_LIKE;
 DROP TABLE NOTICE_MESSAGE;
 DROP TABLE POST;
 DROP TABLE PROFILES;
 DROP TABLE REPORT;
 DROP TABLE TREE;
 DROP TABLE TREE_ADDRESS;
 DROP TABLE TREE_FOREST;
 DROP TABLE TREE_IMAGE;
 DROP TABLE USERS;
 
DROP sequence SEQ_ACTIVITY_POINT_NO;
DROP sequence SEQ_COMMENT_NO;
DROP sequence SEQ_EVENT_NO;
DROP sequence SEQ_FOREST_NO;
DROP sequence SEQ_IMAGE_AND_LIKE_NO;
DROP sequence SEQ_FOREST_NOTICE_NO;
DROP sequence SEQ_NOTICE_MESSAGE_NO;
DROP sequence SEQ_POST_NO;
DROP sequence SEQ_PROFILE_NO;
DROP sequence SEQ_REPORT_NO;
DROP sequence SEQ_TREE_AND_FOREST_NO;
DROP sequence SEQ_TREE_NO;
DROP sequence SQE_BUCKETLIST_NO;


CREATE SEQUENCE   "SEQ_ACTIVITY_POINT_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_COMMENT_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_EVENT_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_FOREST_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_FOREST_NOTICE_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_IMAGE_AND_LIKE_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_NOTICE_MESSAGE_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_POST_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_PROFILE_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_REPORT_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_TREE_AND_FOREST_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SEQ_TREE_NO"   INCREMENT BY 1 START WITH 1 ;
CREATE SEQUENCE   "SQE_BUCKETLIST_NO"   INCREMENT BY 1 START WITH 1 ;

CREATE TABLE  "USERS" 

   (	"USER_ID" VARCHAR2(30) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(30) NOT NULL ENABLE, 
	"TREE_NO" NUMBER, 
	"EMAIL" VARCHAR2(30) NOT NULL ENABLE, 
	"ROLE" VARCHAR2(5) DEFAULT 'user',
	"USER_REG_DATE" DATE NOT NULL ENABLE, 
	"USER_WITHDRAW_REG_DATE" DATE, 
	"USER_STATE" CHAR(1) NOT NULL  , 
	 CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID") ENABLE, 
	 CONSTRAINT "USERS_U" UNIQUE ("EMAIL") ENABLE
   );
   

   
   CREATE TABLE  "TREE" 
   (	"TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"USER_ID" VARCHAR2(30) NOT NULL ENABLE, 
	"TREE_NAME" VARCHAR2(30) NOT NULL ENABLE, 
	"SEED_NO" CHAR(1) NOT NULL ENABLE, 
	"TREE_IMAGE_NAME" VARCHAR2(100), 
	"COUNTRY_ID" CHAR(3) NOT NULL ENABLE, 
	"FAMILY_MOTTO" VARCHAR2(50), 
	"ACTIVITY_TOTAL_POINT" NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "TREE_PK" PRIMARY KEY ("TREE_NO") ENABLE
   );
   
    
    CREATE TABLE  "PROFILES" 
   (	"PROFILE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"PROFILE_NAME" VARCHAR2(30) NOT NULL ENABLE, 
	"BIRTHDAY" VARCHAR2(30), 
	"FAMILY_RELATIONS" VARCHAR2(30) NOT NULL ENABLE, 
	"ADDRESS" VARCHAR2(100), 
	"PHONE" VARCHAR2(30), 
	"PROFILE_IMAGE" VARCHAR2(100) NOT NULL ENABLE, 
	"PROFILE_STATE" CHAR(1) NOT NULL ENABLE, 
	 CONSTRAINT "PROFILES_PK" PRIMARY KEY ("PROFILE_NO") ENABLE, 
	 CONSTRAINT "PROFILES_CON" FOREIGN KEY ("TREE_NO")
	  REFERENCES  "TREE" ("TREE_NO") ON DELETE CASCADE ENABLE
   );
   
  
	 
	 CREATE TABLE  "TREE_IMAGE" 
   (	"TREE_IMAGE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"SEED_NO" CHAR(1) NOT NULL ENABLE, 
	"TREE_IMAGE_NAME" VARCHAR2(30) NOT NULL ENABLE, 
	"ACTIVITY_POINT_START" NUMBER(10,0) NOT NULL ENABLE, 
	"ACTIVITY_POINT_END" NUMBER(10,0) NOT NULL ENABLE
   );  
   
    CREATE TABLE  "FOREST" 
   (	"FOREST_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"FOREST_NAME" VARCHAR2(30) NOT NULL ENABLE, 
	"FOREST_CTREATER_TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"INVITE_POSSIBLE_STATE" CHAR(1) NOT NULL ENABLE, 
	"FOREST_NAME_CHANGE_POSSIBLE_STATE" CHAR(1) NOT NULL ENABLE, 
	"FOREST_INFORM_TEXT" VARCHAR2(1000), 
	"FOREST_INFORM_WRITER" VARCHAR2(30) NOT NULL ENABLE, 
	"FOREST_INFORM_REG_DATE" DATE NOT NULL ENABLE, 
	 CONSTRAINT "FOREST_PK" PRIMARY KEY ("FOREST_NO") ENABLE, 
	 CONSTRAINT "FOREST_UK1" UNIQUE ("FOREST_NAME") ENABLE
   );
   
    CREATE TABLE  "TREE_ADDRESS" 
   (	"COUNTRY_ID" CHAR(3) NOT NULL ENABLE, 
	"COUNTRY_NAME" VARCHAR2(30) NOT NULL ENABLE
   );
   
    CREATE TABLE  "NOTICE_MESSAGE" 
   (	"NOTICE_MESSAGE_NO" NUMBER NOT NULL ENABLE, 
	"SENDER" VARCHAR2(30) NOT NULL ENABLE, 
	"RECEIVER" VARCHAR2(30) NOT NULL ENABLE, 
	"NOTICE_REG_DATE" DATE NOT NULL ENABLE, 
	"NOTICE_MESSAGE_STATE" CHAR(1) NOT NULL ENABLE, 
	"NOTICE_MESSAGE_TYPE" CHAR(1) NOT NULL ENABLE, 
	"NOTICE_MESSAGE_DETAIL" VARCHAR2(100), 
	"POST_IMAGE_NAME" VARCHAR2(30), 
	"NOTICE_MESSAGEBOX_STATE" CHAR(1) NOT NULL ENABLE, 
	"POST_NO" NUMBER, 
	"FOREST_NO" NUMBER, 
	"TREE_NO" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "NOTICE_MESSAGE_PK" PRIMARY KEY ("NOTICE_MESSAGE_NO") ENABLE );
	 
	 CREATE TABLE  "FOREST_NOTICE" 
   (	"FOREST_NOTICE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"FOREST_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"FOREST_NOTICE_STATE" CHAR(1) NOT NULL ENABLE, 
	"FOREST_NOTICE_REG_DATE" DATE NOT NULL ENABLE, 
	 CONSTRAINT "FOREST_NOTICE_PK" PRIMARY KEY ("FOREST_NOTICE_NO") ENABLE
   );
   
    CREATE TABLE  "CALENDER" 
   (	"EVENT_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"EVENT_TITILE" VARCHAR2(30) NOT NULL ENABLE, 
	"EVENT_START_DATE" DATE NOT NULL ENABLE, 
	"EVENT_END_DATE" DATE NOT NULL ENABLE, 
	"D_DAY_STATE" CHAR(1), 
	"EVENT_DETAIL" VARCHAR2(200), 
	 CONSTRAINT "CALENDER_PK" PRIMARY KEY ("EVENT_NO") ENABLE);
	 
	   CREATE TABLE  "POST" 
   (	"POST_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"TREE_NO" NUMBER(30,0) NOT NULL ENABLE, 
	"ALBUM_NAME" VARCHAR2(30), 
	"POST_DETAIL" VARCHAR2(500), 
	"POST_WRITER" VARCHAR2(30) NOT NULL ENABLE, 
	"POST_STATE" CHAR(1) NOT NULL ENABLE, 
	"POST_REG_DATE" DATE NOT NULL ENABLE, 
	 CONSTRAINT "POST_PK" PRIMARY KEY ("POST_NO") ENABLE );
	 
	  CREATE TABLE  "IMAGE_AND_LIKE" 
   (	"IMAGE_AND_LIKE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"IMAGE_NAME" VARCHAR2(50) NOT NULL ENABLE, 
	"POST_NO" NUMBER(10,0), 
	"LIKE_WRITER" VARCHAR2(30) NOT NULL ENABLE, 
	"IMAGE_AND_LIKE_STATE" CHAR(1) NOT NULL ENABLE, 
	 CONSTRAINT "IMAGE_AND_LIKE_PK" PRIMARY KEY ("IMAGE_AND_LIKE_NO") ENABLE );
	 
	 CREATE TABLE  "COMMENTS" 
   (	"COMMENT_NO" NUMBER NOT NULL ENABLE, 
	"COMMENT_DETAIL" VARCHAR2(400) NOT NULL ENABLE, 
	"COMMENT_WRITER" VARCHAR2(30) NOT NULL ENABLE, 
	"COMMENT_REG_DATE" DATE NOT NULL ENABLE, 
	"POST_NO" NUMBER NOT NULL ENABLE, 
	"TREE_NO" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("COMMENT_NO") ENABLE );
	 
	  CREATE TABLE  "ACTIVITY_POINT" 
   (	"ACTIVITY_POINT_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"POINT" NUMBER(10,0) NOT NULL ENABLE, 
	"ACTIVITY_DATE" DATE NOT NULL ENABLE, 
	"ACTIVITY_TYPE" CHAR(1) NOT NULL ENABLE, 
	 CONSTRAINT "ACTIVITY_POINT_PK" PRIMARY KEY ("ACTIVITY_POINT_NO") ENABLE   );
	 
	  CREATE TABLE  "REPORT" 
   (	"REPORT_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"REPORT_TYPE" CHAR(1) NOT NULL ENABLE, 
	"REPORTED_POST_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"REPORT_STATE" CHAR(100) NOT NULL ENABLE, 
	"REPORTER_TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"REPORTED_TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"REPORT_REG_DATE" DATE NOT NULL ENABLE, 
	 CONSTRAINT "REPORT_PK" PRIMARY KEY ("REPORT_NO") ENABLE
   );
   
   CREATE TABLE  "BUCKETLIST" 
   (	"BUCKETLIST_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"BUCKETLIST_WRITER" VARCHAR2(30) NOT NULL ENABLE, 
	"BUCKETLIST_DETAIL" VARCHAR2(200) NOT NULL ENABLE, 
	"BUCKETLIST_REG_DATE" DATE NOT NULL ENABLE, 
	"STAMP_STATE" CHAR(1) NOT NULL ENABLE, 
	"TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "BUCKETLIST_PK" PRIMARY KEY ("BUCKETLIST_NO") ENABLE );
  
   
	 CREATE TABLE  "USERS" 
   (	"USER_ID" VARCHAR2(30) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(30) NOT NULL ENABLE, 
	"TREE_NO" NUMBER, 
	"EMAIL" VARCHAR2(30) NOT NULL ENABLE, 
	"ROLE" VARCHAR2(5) DEFAULT 'user',
	"USER_REG_DATE" DATE NOT NULL ENABLE, 
	"USER_WITHDRAW_REG_DATE" DATE, 
	"USER_STATE" CHAR(1) NOT NULL  , 
	 CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID") ENABLE, 
	 CONSTRAINT "USERS_U" UNIQUE ("EMAIL") ENABLE
   );
	회원정보
    INSERT INTO USERS values('admin', 'admin', 2, 'a1sasd@asd', 'admin',  SYSDATE, null, 1);
    INSERT INTO USERS values('user01', '1111',3,  'a2asd@asd', 'user',  SYSDATE, null, 1);
    INSERT INTO USERS values('user02', '2222',4,  'a3sasd@asd', 'user',  SYSDATE, null, 1);
    INSERT INTO USERS values('user03', '3333',4,  'as4asd@asd', 'user',  SYSDATE, null, 1);
    INSERT INTO USERS values('user04', '4444',5,  'asa5sd@asd', 'user',  SYSDATE, null, 1);
    INSERT INTO USERS values('user05', '5555', 6,  'asa6sd@asd', 'user',  SYSDATE, null, 1);
    INSERT INTO USERS values('user06', '6666',7,  'asasd7@asd', 'user',  SYSDATE, null, 1);
    
    
    나무정보
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'admin', '나무이름1', '0', '나무이미지이름' , 'kr', '가훈', 0 );
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'user01', '나무이름1', '0', '나무이미지이름' , 'kr', '가훈', 0 );
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'user02', '나무이름2', '0', '나무이미지이름' , 'kr', '가훈', 0 );
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'user03', '나무이름3', '0', '나무이미지이름' , 'kr', '가훈', 0 );
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'user04', '나무이름4', '0', '나무이미지이름' , 'kr', '가훈', 0 );
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'user05', '나무이름5', '0', '나무이미지이름' , 'kr', '가훈', 0 );
    INSERT INTO tree values(SEQ_TREE_NO.nextval, 'user06', '나무이름6', '0', '나무이미지이름' , 'kr', '가훈', 0 );
   
    프로필정보
    INSERT INTO profiles values(SEQ_PROFILE_NO.nextval,나무번호넣어야됩니다,'프로필이름','2001-08-18','가족관계','서울시','01088311324','프로필이미지','1');
    
    나무이미지정보
    INSERT INTO tree_image values(1,'1','1번씨앗',0,100);  
    INSERT INTO tree_image values(2,'1','1번묘목',101,200);  
    INSERT INTO tree_image values(3,'1','1번나무',201,300);  
    INSERT INTO tree_image values(4,'2','2번씨앗',0,100);  
    INSERT INTO tree_image values(5,'2','2번묘목',101,200);  
    INSERT INTO tree_image values(6,'2','2번나무',201,300);  
    INSERT INTO tree_image values(7,'3','3번씨앗',0,100);  
    INSERT INTO tree_image values(8,'3','3번묘목',101,200);  
    INSERT INTO tree_image values(9,'3','3번씨앗',201,300);  
    
    나무주소정보
    INSERT INTO tree_address values('kor','korea');
    INSERT INTO tree_address values('uk','korea');
    
    알림메시지정보
    INSERT INTO NOTICE_MESSAGE values(SEQ_NOTICE_MESSAGE_NO.nextval,'진우','초아',SYSDATE,'1','1','초아누나가괴롭힌다.','나무','1',1,2,23);
    
    숲 알림글 정보
    INSERT INTO FOREST_NOTICE values(SEQ_FOREST_NOTICE_NO.nextval,2,'1',SYSDATE);
    
    일정정보
    INSERT INTO CALENDER values(SEQ_EVENT_NO.nextval,23,'야',SYSDATE,SYSDATE,'1','짬봉먹자');
    
    숲 정보
    INSERT INTO FOREST values(SEQ_FOREST_NO.nextval,'test',2,'1','1','HelloForestInformText','ian',SYSDATE);
  
    사진 게시글정보
    INSERT INTO POST values(SEQ_POST_NO.nextval,SYSDATE,'게시글내용','user01','1',21,'앨범이름');
    
    좋아요와 이미지 정보
    INSERT INTO IMAGE_AND_LIKE values(SEQ_IMAGE_AND_LIKE_NO.nextval,'ㅁㄴㅇ.jpg',2,'우씨','1');
    
    댓글정보
    INSERT INTO COMMENTS values(SEQ_COMMENT_NO.nextval,'댓글내용입니다','작성자입니다',SYSDATE,2,2);
    
    활동지수 정보
    INSERT INTO ACTIVITY_POINT values(SEQ_ACTIVITY_POINT_NO.nextval,23,10,SYSDATE,'1');
    
    신고정보
    INSERT INTO REPORT values(SEQ_REPORT_NO.nextval,'2',2,'0',2,4,SYSDATE);
    
     INSERT INTO BUCKETLIST values(SQE_BUCKETLIST_NO.nextval,'작성자입니다','내용입니다',SYSDATE,'0',23);
   