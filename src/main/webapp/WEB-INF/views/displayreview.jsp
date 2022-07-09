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
                    <c:if test="${not empty error}">
                        <div id="window_title">Review Error</div>
                        <div id="window_text">
                            ${error}
                            <hr />
                            <p><div id="button"><a href="/submitreview">Try Again</a></div>
                            <div id="button"><a href="/">Home</a></div></p>
                        </div>
                    </c:if>
                    <c:if test="${empty error}">
                        <div id="window_title">Review Submitted</div>
                        <div id="window_text">
                            <p>Thanks for your review!</p>
                            <p><strong>Name</strong>: ${name}</p>
                            <p><strong>Comment</strong>: ${comment}</p>
                            <p><strong>Rating</strong>: ${rating}/10</p>
                            <hr />
                            <p><div id="button"><a href="/">Home</a></div></p>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>