package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.entity.Jumme;
import util.DBUtil;

/**
 * Servlet implementation class controller
 */
@WebServlet("/controller")
public class controller extends HttpServlet {


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			EntityManager em = DBUtil.getEntityManager(); 
			

			 // 정통쿼리가 아니고 엔티티클래스 기준의 sql문장임
			List<Jumme> all = em.createQuery("SELECT j FROM Jumme j", Jumme.class).getResultList();
			System.out.println(all);
			for (Jumme e : all) {
				System.out.println(e);
			}
			request.setAttribute("all", all);
			request.getRequestDispatcher("show.jsp").forward(request, response);

			
			
			
//			
//			
//			System.out.println(em.find(Jumme.class, 1l)); // 두번째 파라미터는 pk값
//			System.out.println(em.find(Jumme.class, 2l)); 
//			System.out.println(em.find(Jumme.class, 3l)); 
			em.close(); //기능만 소멸
			em = null;
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
