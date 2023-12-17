package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import mvc.repository.AgenciaRepository;
import mvc.model.Agencias;

@Controller
@RequestMapping("/agencia")
public class AgenciaController {

	@Autowired
	private AgenciaRepository agenciaRepository;
	
	@GetMapping
	public ModelAndView agencia() {
		ModelAndView modelAndView = new ModelAndView("views/agencia/index.html");
		modelAndView.addObject("agencias", agenciaRepository.findAll());
		
		modelAndView.addObject("agencia", new Agencias());
		
		return modelAndView;
		
	}
	
	@PostMapping("/cadastrar")
	public String cadastrar(Agencias agencia) {
		agenciaRepository.save(agencia);

		return "redirect:/agencia";
	}

	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		agenciaRepository.deleteById(id);

		return "redirect:/agencia";
	}

}
