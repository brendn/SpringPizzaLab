<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css" />

        <title>Custom Pizza Order</title>
    </head>
    <body>
        <div class="box">
            <div id="container">
                <div id="window_main">
                    <div id="window_title">Order a CUSTOM Pizza! (wow)</div>
                    <div id="window_text">
                    <p>Customize your pizza!</p>

                    <form action="/order" method="POST">
                        Size:
                        <select name="size">
                          <option value="Small">Small</option>
                          <option value="Medium">Medium</option>
                          <option value="Large">Large</option>
                        </select>
                        <br />
                        Topping Count: <input type="number" id="toppings" name="toppings" min="0" value = "0" max="100">
                        <br />
                        Special Instructions: <input name="instructions" />
                        <br />
                        <input type="checkbox" id="glutenFree" name="glutenFree" value="glutenFree">
                        <label for="glutenFree"> Gluten Free Crust ($2.00 Extra)</label><br>
                        <input type="submit" />
                    </form>

                    <hr />
                    <p><div id="button"><a href="/">Home</a></div></p>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>