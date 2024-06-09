use `homework10_23`;
select tb_bookinfo.id, tb_bookinfo.bookname, tb_bookinfo.author, tb_borrow.readerid from tb_bookinfo, tb_borrow where (tb_bookinfo.id = tb_borrow.id);

-- 
select tb_bookinfo.id, tb_bookinfo.bookname, tb_bookinfo.author, tb_booktype.id, tb_booktype.typename from tb_booktype left join tb_bookinfo on (tb_booktype.id = tb_bookinfo.typeid);
select tb_bookinfo.id, tb_bookinfo.bookname, tb_bookinfo.author, tb_booktype.id, tb_booktype.typename from tb_booktype right join tb_bookinfo on (tb_booktype.id = tb_bookinfo.typeid);

Select id, bookname from tb_bookinfo where id in (Select bookid from tb_borrow);

Select tb_bookinfo.id, tb_bookinfo.bookname, tb_bookinfo.author from tb_bookinfo where id = (select bookid from tb_borrow where bookid = 8)