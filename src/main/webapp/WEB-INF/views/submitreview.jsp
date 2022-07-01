<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css" />

        <title>Test Form</title>
    </head>
    <body>
        <div class="box">
            <div id="container">
                <div id="window_main">
                    <div id="window_title">Submit a review</div>
                    <div id="window_text">
                    <p>Thanks for giving us your money.</p>
                    <p>Feel free to give us a review if you want. If it's positive enough, we'll display it!</p>
                    <form action="/submitreview" method="POST">
                        Name: <input name="name" />
                        <br />
                        Comment: <input name="comment" />
                        <br />
                        Rating:
                        <select name="rating">
                          <option value="0">0</option>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select>
                        <br />
                        <input type="submit" />
                    </form>
                    </div>
                </div>
            </div>
        </div>

        <footer>Created by <a href="https://github.com/brendn">brendn</a></footer>

    </body>
</html>