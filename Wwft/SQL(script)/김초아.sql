addPost

insert into post(post_no,post_reg_date,post_detail,post_writer,post_state,tree_no,album_name)
values(SEQ_POST_NO.NEXTVAL,'20210114','������Ʈ���Դϴ�','����','1',1,'������');

getPost

SELECT
post_no,post_reg_date,post_detail,post_writer,post_state,tree_no,album_name		
FROM post
WHERE post_no = 4;

updatePost

UPDATE post
set
post_detail ='��������',
post_state ='0',
album_name='�����ٹ�'
WHERE post_no  = 2;