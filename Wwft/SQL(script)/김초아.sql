addPost

insert into post(post_no,post_reg_date,post_detail,post_writer,post_state,tree_no,album_name)
values(SEQ_POST_NO.NEXTVAL,'20210114','프로젝트중입니다','쿠팡','1',1,'거제도');

getPost

SELECT
post_no,post_reg_date,post_detail,post_writer,post_state,tree_no,album_name		
FROM post
WHERE post_no = 4;

updatePost

UPDATE post
set
post_detail ='수정내용',
post_state ='0',
album_name='수정앨범'
WHERE post_no  = 2;