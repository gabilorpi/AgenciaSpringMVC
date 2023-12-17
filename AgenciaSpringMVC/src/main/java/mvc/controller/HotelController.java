package mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc.repository.HotelRepository;
import mvc.model.Hoteis;



	@Controller
	@RequestMapping("/hotel" )
	public class HotelController {
		
		@Autowired
		private HotelRepository hotelRepository;
		
		@GetMapping
		public ModelAndView hotel() {
			ModelAndView modelAndView = new ModelAndView("views/hotel/index.html");
			modelAndView.addObject("hoteis", hotelRepository.findAll());
			System.out.println(hotelRepository.findAll());

			modelAndView.addObject("hotel", new Hoteis());
			
			return modelAndView;
			
		}
		
		@PostMapping("/cadastrar")
		public String cadastrar(Hoteis hotel) {
			hotelRepository.save(hotel);

			return "redirect:/hotel";
		}

		@GetMapping("/atualizar")
		public ModelAndView Atualizar() {
		    ModelAndView modelAndView = new ModelAndView("views/hotel/atualizar");
		    modelAndView.addObject("Hoteis", hotelRepository.findAll()); // Adiciona a lista de contatos
			System.out.println(hotelRepository.findAll());
		    modelAndView.addObject("hotel", new Hoteis());
		    return modelAndView;
		}
		
		 @PostMapping("/atualizar")
		    public String atualizar( Hoteis hotel) {
			 hotelRepository.save(hotel);
		        return "redirect:/hotel/atualizar";
		    }
		
		
		
			@GetMapping("/{id}/excluir")
			public String excluir(@PathVariable Long id) {
				hotelRepository.deleteById(id);

				return "redirect:/hotel";
			}

	
		

	}
	