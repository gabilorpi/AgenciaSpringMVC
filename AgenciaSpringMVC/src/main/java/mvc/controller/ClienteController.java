package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc.repository.ClienteRepository;
import mvc.model.Clientes;

@Controller
@RequestMapping("/cliente")
public class ClienteController {
	
	@Autowired
	private ClienteRepository clienteRepository;
	
	@GetMapping
	public ModelAndView cliente() {
		ModelAndView modelAndView = new ModelAndView("views/cliente/index.html");
		modelAndView.addObject("clientes", clienteRepository.findAll());
		
		modelAndView.addObject("cliente", new Clientes());
		
		return modelAndView;
		
	}
	
	@PostMapping("/cadastrar")
	public String cadastrar(Clientes cliente) {
		clienteRepository.save(cliente);

		return "redirect:/cliente";
	}

	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable Long id) {
		clienteRepository.deleteById(id);

		return "redirect:/cliente";
	}

	

}
