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
    public String index() {
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

    /**
     * When the user submits the form on the order.jsp page, this code will be executed.
     * We're going to take everything from the form and bring it over to the displayorder.jsp page to display to the user.
     *
     * @param size The size of the pizza
     * @param toppings How many toppings are on the pizza
     * @param instructions Special instructions for the pizza
     * @param glutenFree If the pizza is gluten-free
     * @param model Where we will be adding each of the attributes
     */
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
        String order = "Your total is " + getDisplayPrice(size, toppings, glutenFree != null);
        model.addAttribute("order", order);

        return "displayorder";
    }

    /**
     * Calculates the cost of the pizza and returns a displayable price e.g. "$#.##"
     * @param size The size of the pizza
     * @param toppings How many toppings are on the pizza
     * @param glutenFree If the pizza is gluten-free
     * @return The price of the pizza formatted as a String
     */
    private String getDisplayPrice(String size, int toppings, boolean glutenFree) {
        // I originally wrote this method with the size parameter as an int
        int size2 = size.equals("Small") ? 0 : size.equals("Medium") ? 1 : 2;
        // Get the base cost of the pizza based on the size
        double base = size2 == 0 ? 7 : size2 == 1 ? 10 : 12;
        // Get the topping price multiplier based on the size
        double toppingMult = size2 == 0 ? 0.5 : size2 == 1 ? 1 : 1.25;
        // Output cost of the pizza
        double total = base + (toppings * toppingMult) + (glutenFree ? 2 : 0);
        // Format the output to "$#.##" format
        return NumberFormat.getCurrencyInstance().format(total);
    }

    /**
     * Functionality for the review form. Upon submission, this information will be sent to the displayreview.jsp
     * page.
     *
     * @param name The name of the user submitting a review
     * @param comment A comment for the review
     * @param rating The rating for the review
     */
    @PostMapping("/submitreview")
    public String displayResult(@RequestParam String name, @RequestParam String comment, @RequestParam int rating, Model model) {
        model.addAttribute("name", name);
        model.addAttribute("comment", comment);
        model.addAttribute("rating", rating);
        return "displayreview";
    }
}
