package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
/**
 * 实现Tag接口开发自定义标签
 * @author CIT3D
 *
 */
public class HelloTag implements Tag {

	private PageContext pageContext;
	private Tag parent;

	@Override
	public int doEndTag() throws JspException {
		// TODO 自动生成的方法存根
		//通过隐式对象pageContent获取隐式对象out
		JspWriter out=pageContext.getOut();
		try
		{
			out.println("Hello world");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return Tag.EVAL_PAGE;
	}
	/**
	 * 标签开始调用
	 */
	@Override
	public int doStartTag() throws JspException {
		// TODO 自动生成的方法存根
		
		return Tag.SKIP_BODY;
	}

	@Override
	public Tag getParent() {
		// TODO 自动生成的方法存根
		return null;
	}
	/**
	 * 销毁前调用，用于释放资源
	 */
	@Override
	public void release() {
		// TODO 自动生成的方法存根

	}
	/**
	 * 将页面隐式对象pageContent传入到标签中
	 */
	@Override
	public void setPageContext(PageContext arg0) {
		// TODO 自动生成的方法存根
		this.pageContext=arg0;
	}
	/**
	 * 设置上一级标签
	 */
	@Override
	public void setParent(Tag arg0) {
		// TODO 自动生成的方法存根
		this.parent=arg0;
	}

}
