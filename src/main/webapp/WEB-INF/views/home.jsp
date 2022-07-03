<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css" />

        <title>Home</title>
    </head>
    <body>
        <div class="box">
            <div id="container">
                <div id="window_main">
                    <div id="window_title">Test</div>
                    <div id="window_text">
                        <p><strong>BRENDAN'S PIZZAS</strong></p>
                        <p>Welcome to Brendan's Pizzas. We've got the best pizza in town.  Don't believe us? That's lame.</p>
                        <hr />
                        Check out our specialty pizzas!
                        <p><a href="/specialtyorder?name=Sand&price=29.99">Sand Pizza</a>: This pizza is made out of sand!</p>
                        <p><a href="/specialtyorder?name=Spooky&price=19.99">Spooky Pizza</a>: Be careful! This pizza might jump and scare you!</p>
                        <p><a href="/specialtyorder?name=Living&price=99.99">Living Pizza</a>: A great family pet! It's pizza with legs. Please don't eat it.</p>
                        <hr />
                        <p><div id="button"><a href="/order">Custom Order</a></div>
                        <div id="button"><a href="/submitreview">Submit a review</a></div></p>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>