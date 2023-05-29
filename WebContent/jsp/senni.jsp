<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <% 
		String name = request.getParameter("name");
		String review = request.getParameter("review");
		String[] box = request.getParameterValues("box");
		String radio = request.getParameter("radio");
		String mail = request.getParameter("mail");
		String work = request.getParameter("work");
		%>
</head>
<body>
		<p> 氏名は <%=name %> さんです。</p>
		<p>会社は <%=work %> です。</p>
		<p>メールアドレスは <%= mail %> です。</p>
		<p>お問い合わせ内容は <%= review %> です。</p>
		
		<p>メルマガの種類は<%=box %>です。</p>
	    <%
	    if(box != null){
	    	for(String item : box) {
				out.println("「"+item+"」");
			}
			out.println(box);
	    }
	    %>
		<p>資料請求希望は <%= radio %> です。</p>
		 
		
		<p>この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。</p>"
		<a href = "http://tomcat.apache.org/">リンクはここから</a>


</body>
</html>