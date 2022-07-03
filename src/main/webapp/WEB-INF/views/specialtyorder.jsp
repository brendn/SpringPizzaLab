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
                    <div id="window_title">Specialty Order</div>
                    <div id="window_text">
                        <p>Specialty Pizza!</p>
                        <p><strong>Name</strong>: ${name}</p>
                        <p><strong>Price</strong>: $${price}</p>
                        <hr />
                        <p><div id="button"><a href="/">Home</a></div></p>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>