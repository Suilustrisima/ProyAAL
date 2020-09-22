package ec.epn.edu.controlador;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

/**
 * Servlet implementation class EliminarNovelaGrafica
 */
@Transactional
@WebServlet("/EliminarNovelaGrafica")
public class EliminarNovelaGrafica extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@PersistenceContext (unitName="NgPU")
	private EntityManager em;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarNovelaGrafica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		
		em.createNativeQuery("DELETE FROM NOVELAGRAFICA WHERE id_ng=:id")
		.setParameter("id", Integer.parseInt(id))
		.executeUpdate();
        
		request.getRequestDispatcher("ListarNovelaGrafica").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
