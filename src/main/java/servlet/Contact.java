package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/servlet/contact")
//サーブレットはずっと４０４エラーで確認が出来ませんでした。
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		try {
		
		String name = request.getParameter("name");
		String review = request.getParameter("review");
		String[] box = request.getParameterValues("box");
		String radio = request.getParameter("radio");
		String mail = request.getParameter("mail");
		String work = request.getParameter("work");
	
		request.setAttribute("name", name);
		request.setAttribute("review", review);
		request.setAttribute("box", box);
		request.setAttribute("radio", radio);
		request.setAttribute("mail", mail);
		request.setAttribute("work", work);
		
		request.getRequestDispatcher("/senni.jsp")
		.forward(request, response);
		
	}catch(Exception e){
		e.printStackTrace(out);
	}
		
		/*out.println("<p>" + "氏名は" + name + "さんです。</p>");
		out.println("<p>" + "会社は" + work + "です。</p>");
		out.println("<p>" + "メールアドレスは" + mail + "です。</p>");
		out.println("<p>" + "お問い合わせ内容は" + review + "です。</p>");*/
		
		
		//out.println("<p>" + "資料請求希望は" + radio + "です。</p>");
		
	
		
		}


		// TODO 自動生成されたメソッド・スタブ
		
	

		}
