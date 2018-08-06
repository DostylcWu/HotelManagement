package com.hotelsystem.service;
import java.util.List;
import com.hotelsystem.bean.CommentBean;
import com.hotelsystem.bean.ManagerLoginBean;

/**
 * @ClassNmae IClassService
 * @author ZhangJiaLin
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public interface ICommentService {
	// 查看所有评论
	public List<CommentBean> getAllComment();
	// 添加一条评论
	public String appendComment(CommentBean comment);
	// 管理员删除评论，需要去找到那个评论，然后再去删掉
	public String clearComment(ManagerLoginBean managerLoign);
}
