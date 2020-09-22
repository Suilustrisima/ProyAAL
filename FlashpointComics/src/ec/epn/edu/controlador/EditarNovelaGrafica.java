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

import ec.epn.edu.modelo.NovelaGrafica;


/**
 * Servlet implementation class EditarNovelaGrafica
 */
@Transactional
@WebServlet("/EditarNovelaGrafica")
public class EditarNovelaGrafica extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@PersistenceContext (unitName="NgPU")
	private EntityManager em;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarNovelaGrafica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idId=request.getParameter("id");
		NovelaGrafica l =em.find(NovelaGrafica.class,new Integer(idId));
		
		request.setAttribute("novelaGrafica", l);	
		request.setAttribute("valId", idId);
		request.setAttribute("valTitulo", l.getNg_titulo());
		request.setAttribute("valAutor", l.getNg_autor());
		request.setAttribute("valResumen", l.getNg_resumen());
		request.setAttribute("valEditorial", l.getNg_editorial());
		request.setAttribute("valIdioma", l.getNg_idioma());
		request.setAttribute("valAnioPubl", l.getNg_anio_publ());
		request.setAttribute("valNumArch", l.getNg_n_archivos().toString());		
			
		System.out.println("Novela gráfica a editar: titulo:" + l.getNg_titulo() 
					 + " autor: " + l.getNg_autor()+ " resumen:" + l.getNg_resumen());
			
			request.getRequestDispatcher("editarNovelaGrafica.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
