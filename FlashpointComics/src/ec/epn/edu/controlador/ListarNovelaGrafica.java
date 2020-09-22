package ec.epn.edu.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import ec.epn.edu.modelo.NovelaGrafica;

/**
 * Servlet implementation class ListarNovelaGrafica
 */
@Transactional
@WebServlet("/ListarNovelaGrafica")
public class ListarNovelaGrafica extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@PersistenceContext (unitName="NgPU")
	private EntityManager em;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarNovelaGrafica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Query q = em.createQuery("Select l from NovelaGrafica as l  ORDER BY id_ng", NovelaGrafica.class);
		
		List<NovelaGrafica> novelaGrafica= q.getResultList();
		
		request.setAttribute("novelaGrafica",novelaGrafica);
		request.getRequestDispatcher("mostrarNovelaGrafica.jsp").forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
