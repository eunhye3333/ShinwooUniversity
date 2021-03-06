package question.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.vo.Member;
import question.model.service.QuestionService;
import question.model.vo.Question;

/**
 * Servlet implementation class InsertAnswerServlet
 */
@WebServlet("/answerQuestion.li")
public class InsertAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertAnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int questNo = Integer.parseInt(request.getParameter("questNo"));
		String answerContent = request.getParameter("answerContent");
		String answerId = ((Member)request.getSession().getAttribute("loginUser")).getMemberId();
		
		
		Question q = new Question();
		q.setQuest_No(questNo);
		q.setAnswer(answerContent);
		q.setAns_Id(answerId);
		
		int result = new QuestionService().updateAnswer(q);
		
		if(result > 0) {
			response.sendRedirect("questionList.li");
		} else {
			request.setAttribute("msg", "문의 목록 조회 실패");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
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
