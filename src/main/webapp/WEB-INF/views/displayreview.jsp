<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css" />

        <title>Review Submitted!</title>
    </head>
    <body>
        <div class="box">
            <div id="container">
                <div id="window_main">
                    <div id="window_title">Review Submitted</div>
                    <div id="window_text">
                        <p>Thanks for your review!</p>
                        <p>Name: ${name}</p>
                        <p>Comment: ${comment}</p>
                        <p>Rating: ${rating}</p>
				        <p><div id="button"><a href="/">Home</a></div></p>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>