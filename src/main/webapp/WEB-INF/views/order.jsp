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
                        <p><a href="/order?type=picklenutella">Pickle and Nutella Dessert Pizza</a></p>

                        <hr />
                        <p><div id="button"><a href="/submitreview">Submit a review</a></div></p>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>