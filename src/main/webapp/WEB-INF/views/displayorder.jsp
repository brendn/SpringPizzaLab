<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css" />

        <title>Custom Pizza Order Confirmed!</title>
    </head>
    <body>
        <div class="box">
            <div id="container">
                <div id="window_main">
                    <div id="window_title">Order Confirmed!</div>
                    <div id="window_text">
                        <p>Thanks for the order, sport. Appreciate ya.</p>
                        <p><strong>Size</strong>: ${size}</p>
                        <p><strong>Toppings</strong>: ${toppings}</p>
                        <p><strong>Special Instructions</strong>: ${instructions}</p>
                        <p><strong>Gluten Free</strong>: ${glutenFree}</p>
                        <p><strong>${order}</strong></p>
                        <hr />
                        <p><div id="button"><a href="/">Home</a></div>
                        <div id="button"><a href="/order">Place Another Order</a></div></p>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>