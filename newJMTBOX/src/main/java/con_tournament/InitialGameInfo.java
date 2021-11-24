package con_tournament;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import model.TournamentDAO;
import model.TournamentVO;


@WebServlet("/InitialGameInfo")
public class InitialGameInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Gson gs = new Gson();
		JsonArray jsArr = new JsonArray();
		int tournament_id = Integer.parseInt(request.getParameter("data"));
		
		TournamentDAO dao = new TournamentDAO();
		ArrayList<TournamentVO> voArr = dao.initialGameInfo(tournament_id);
		
		for(int i =0; i<voArr.size();i++) {
			jsArr.add(gs.toJson(voArr.get(i)));
		}
		System.out.println("요청이 들어옴");
		System.out.println(voArr.get(0).getContent_id());
		out.print(jsArr);
		

		
	
	
	}

}
