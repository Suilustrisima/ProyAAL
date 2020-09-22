package ec.epn.edu.controlador;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

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
 * Servlet implementation class ActualizarNovelaGrafica
 */
@Transactional
@WebServlet("/ActualizarNovelaGrafica")
public class ActualizarNovelaGrafica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	@PersistenceContext (unitName="NgPU")
	private EntityManager em;/**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarNovelaGrafica() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String id=request.getParameter("id");
		String titulo = request.getParameter("titulo");
		String autor = request.getParameter("autor");
		String resumen = request.getParameter("resumen");
		String editorial = request.getParameter("editorial");
		String idioma = request.getParameter("idioma");
		String anioPubl = request.getParameter("anioPubl");
		String numArch = request.getParameter("numArch");			
		
		
						
		
		System.out.println("Se guardará: titulo: " + titulo + " autor: " + autor + " resumen: " + resumen);
		
		if(titulo.trim().equals("") || autor.trim().equals("") || editorial.trim().equals("") || idioma.trim().equals("") || numArch.trim().equals("") ) {
			
			request.setAttribute("valId", id);
			request.setAttribute("valTitulo", titulo);
			request.setAttribute("valAutor", autor);	
			request.setAttribute("valResumen", resumen);
			request.setAttribute("valEditorial", editorial);
			request.setAttribute("valIdioma", idioma);				
			request.setAttribute("valAnioPubl", anioPubl);
			request.setAttribute("valNumArch", numArch);
															
			request.setAttribute("valError", "Titulo o autor sin llenar");
			
			request.getRequestDispatcher("editarNovelaGrafica.jsp").forward(request, response);

		}else {
			
			NovelaGrafica l = new NovelaGrafica();
			
			l.setId_Ng(Integer.parseInt(id));		
			l.setNg_resumen(resumen);
			l.setNg_titulo(titulo);
			l.setNg_autor(autor);						
			l.setNg_editorial(editorial);
			l.setNg_idioma(idioma);			
			l.setNg_anio_publ(anioPubl);		
			l.setNg_n_archivos(Integer.parseInt(numArch));			
			em.merge(l);
			request.getRequestDispatcher("ListarNovelaGrafica").forward(request, response);
		}	

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
