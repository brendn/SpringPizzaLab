package co.grandcircus.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.NumberFormat;

@Controller
public class PizzaController {

    @RequestMapping("/")
    public String index(Model model) {
        return "home";
    }

    @RequestMapping("/submitreview")
    public String submitReview() {
        return "submitreview";
    }

    @RequestMapping("/order")
    public String customOrder() {
        return "order";
    }

    @RequestMapping("/specialtyorder")
    public String specialtyOrder(@RequestParam String name, @RequestParam String price, Model model) {
        model.addAttribute("name", name);
        model.addAttribute("price", price);

        return "specialtyorder";
    }

    @PostMapping("/order")
    public String submitCustomOrder(@RequestParam String size, @RequestParam int toppings,
                                    @RequestParam String instructions, @RequestParam(required = false) String glutenFree,
                                   Model model) {
        model.addAttribute("size", size);
        model.addAttribute("toppings", toppings);

        // If there are no instructions given, we will display 'None'
        model.addAttribute("instructions", instructions.length() == 0 ? "None" : instructions);

        // If the value for the gluten-free checkbox is null then it is unchecked
        String glutenOut = glutenFree == null ? "No" : "Yes";
        model.addAttribute("glutenFree", glutenOut);

        // Display string that will show on the displayorder.jsp page
        String order = "Your total is " + NumberFormat.getCurrencyInstance().format(calcPizza(size, toppings, glutenFree != null));
        model.addAttribute("order", order);

        return "displayorder";
    }

    // Calculates the cost of the pizza given size, toppings, gluten free
    private double calcPizza(String size, int toppings, boolean glutenFree) {
        int size2 = size.equals("Small") ? 0 : size.equals("Medium") ? 1 : 2;
        double base = size2 == 0 ? 7 : size2 == 1 ? 10 : 12;
        double toppingMult = size2 == 0 ? 0.5 : size2 == 1 ? 1 : 1.25;
        return base + (toppings * toppingMult) + (glutenFree ? 2 : 0);
    }

    @PostMapping("/submitreview")
    public String displayResult(@RequestParam String name, @RequestParam String comment, @RequestParam int rating, Model model) {
        model.addAttribute("name", name);
        model.addAttribute("comment", comment);
        model.addAttribute("rating", rating);
        return "displayreview";
    }


}
