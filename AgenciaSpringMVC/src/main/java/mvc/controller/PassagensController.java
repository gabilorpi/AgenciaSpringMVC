package mvc.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc.model.Passagens;
import mvc.repository.PassagensRepository;
import mvc.repository.VooRepository;
import mvc.repository.ClienteRepository;

@Controller
@RequestMapping("/Passagens")
public class PassagensController {
	
	@Autowired
	private PassagensRepository PassagensRepository; 
	@Autowired
	private ClienteRepository clienteRepository; 
	@Autowired 
	private VooRepository vooRepository;

	@GetMapping
	public ModelAndView Passagens() {
		ModelAndView modelAndView = new ModelAndView("views/compras/index.html");

		modelAndView.addObject("listaClientes", clienteRepository.findAll());
		modelAndView.addObject("listaVoos", vooRepository.findAll());
		modelAndView.addObject("Passagens", PassagensRepository.findAll());
		modelAndView.addObject("Passagem", new Passagens());

		return modelAndView;
	}
	
	@PostMapping("/cadastrar")
	public String cadastrar(@ModelAttribute("Passagens")Passagens Passagens) {

		PassagensRepository.save(Passagens);

		return "redirect:/Passagens";
	}

	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		PassagensRepository.deleteById(id);

		return "redirect:/Passagens";
	}
}
