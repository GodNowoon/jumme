package controller;

import java.io.IOException;
import java.util.List;

import dao.JummeDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.entity.Jumme;


@WebServlet("/jumme")
public class Controller extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String category = request.getParameter("category");
    	
    	// DAO 통해 DB에서 해당 카테고리 음식점 가져오기
        JummeDAO dao = new JummeDAO();
        System.out.println(dao);
        List<Jumme> list = dao.findByCategory(category);

        // 데이터 전달
        request.setAttribute("list", list);
        request.setAttribute("category", category);
        
        // JSP로 포워딩
        RequestDispatcher rd = request.getRequestDispatcher("/jumme.jsp");
        rd.forward(request, response);
        
        
        
        
    }
	
    

}
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String category = request.getParameter("category");
//		String rname = request.getParameter("rname");
//		String rmenu = request.getParameter("rmenu");
//		String score = request.getParameter("score");
//		String link = request.getParameter("link");
//		
//		EntityManager em = DBUtil.getEntityManager(); 
//		System.out.println(em.find(Jumme.class, 2l)); 
//		System.out.println(em.find(Jumme.class, 3l)); 
////		if(id != null && id.length() !=0 && pw != null && pw.length() !=0) {
//			
//			//System.out.println(em.find(jumme.class, 1l)); // 두번째 파라미터는 pk값
//			//request.setAttribute("msg", em.find(jumme.class, 1l));
//			//System.out.println(em.find(jumme.class, 1l));
//			em.close(); //기능만 소멸
//			em = null;
//			
////			if(id.equals("admin") && pw.equals("11")) {
//				
//				request.getRequestDispatcher("app/home.jsp").forward(request, response);
//			
////			}else {
//				request.getRequestDispatcher("fail/loginfail2.jsp").forward(request, response);
//				//response.sendRedirect("fail/loginfail2.jsp?msg=fail");
//			}
//			
////		}else { 
////			request.getRequestDispatcher("fail/loginfail2.jsp").forward(request, response);
//			//response.sendRedirect("fail/loginfail2.jsp");
////		}
////	}
//
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

