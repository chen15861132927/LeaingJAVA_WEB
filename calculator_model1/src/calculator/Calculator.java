/**
 * 
 */
package calculator;

import java.io.EOFException;

/**
 * @author CIT3D
 *
 */
public class Calculator {
//属性定义
//value1	
	private String value1="";
	public String getValue1() {
		return value1;
	}
	public void setValue1(String value1) {
		this.value1 = value1;
	}
	
//value2
	private String value2="";
	public String getValue2() {
		return value2;
	}
	public void setValue2(String value2) {
		this.value2 = value2;
	}
	
//oper	
	private String oper="";
	
	public String getOper() {
		return oper;
	}
	public void setOper(String oper) {
		this.oper = oper;
	}
	
	//相应的业务方法
	public String calculate() throws EOFException
	{
		double d1=0.0;
		double d2=0.0;
		double res=0.0;
		d1=Double.parseDouble(value1);
		d2=Double.parseDouble(value2);
		if(oper.equals("+"))
		{
			res=d1-d2;
		}
		else if(oper.equals("-"))
		{
			res=d1-d2;
		}
		else if(oper.equals("*"))
		{
			res=d1*d2;
		}
		else if(oper.equals("/"))
		{
			res=d1/d2;
		}
		return String.valueOf(res);
	}
}
