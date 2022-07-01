package co.grandcircus.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AttemptedController {

    @RequestMapping("/")
    public String returnAString(Model model) {
        return "home";
    }

    @RequestMapping("/order")
    public String doTest(@RequestParam String type, @RequestParam String name, Model model) {
        model.addAttribute("name", name);

        return "order";
    }

    @RequestMapping("/submitreview")
    public String showForm() {
        return "submitreview";
    }

    @PostMapping("/submitreview")
    public String displayResult(@RequestParam String name, @RequestParam String comment, @RequestParam int rating, Model model) {
        model.addAttribute("name", name);
        model.addAttribute("comment", comment);
        model.addAttribute("rating", rating);
        return "displayreview";
    }
}
