package org.springframework.social.showcase.viadeo;

import java.security.Principal;

import javax.inject.Inject;

import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.viadeo.api.Viadeo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViadeoProfileController {

	@Inject
	private ConnectionRepository connectionRepository;
	
	@RequestMapping(value="/viadeo", method=RequestMethod.GET)
	public String home(Principal currentUser, Model model) {
		Connection<Viadeo> connection = connectionRepository.findPrimaryConnection(Viadeo.class);
		if (connection == null) {
			return "redirect:/connect/viadeo";
		}
		model.addAttribute("profile", connection.getApi().userOperations().getUserProfile());
		return "viadeo/profile";
	}
}
