
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reviews</title>

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="../css/review.css" />
        <script src="../javascript/main.js"></script>
        <link rel="stylesheet" href="../css/jquery.rateyo.css"/>
        <script type="text/javascript" src="../javascript/jquery.min.js"></script>
        <script type="text/javascript" src="../javascript/jquery.rateyo.js"></script>
    </head>
    <body>
        <%
            String user = session.getAttribute("username").toString();
            session.setAttribute("username", user);
        %>
        <div id="background">
            <button id="logout">Logout</button>
            <button id="back">Go Back</button>
            <div id="restName"><%= request.getParameter("restaurant")%> </div>

        </div>    

        <div id="reviewRes">
            <div class="userDate">
                <p class="user"> Username: <%= session.getAttribute("username")%>
                <p class="date">
                    Date: <script> document.write(new Date().toLocaleDateString());</script>
                </p>
                </p>
                <div style="clear: both;"></div>
                <div class="rateYo"><input type="hidden" value="0.0" name="rateyoid" class="rateyoid"></div><br>
            </div>
            <p> <%= request.getParameter("review")%> </p><hr>

            <div class="userDate">
                <p class="user">Username: Tommy 
                <p class="date">Date: 3/14/2018</p>
                </p>
                <div style="clear: both;"></div>
                <div class="rateYo"><input type="hidden" value="3.2" name="rateyoid" class="rateyoid"></div><br>
            </div>  
            <p> Really fun and interesting place.  I think that the owner literally conducted every part of our 
                meal - seating us, taking our order, cooking our food, checking us out, and cleaning up after us.  
                That said, he really could have used a waiter....as once the quirkiness wow factor was over, 
                we were hungry and wishing for attention! I'd recommend this place though - the food is really good.   
                The menu is creative.  Just go when you have the time to be patient.</p><hr>
            
            <div class="userDate">
                <p class="user">Username: Jenny 
                <p class="date">Date: 1/05/2018</p>
                </p>
                <div style="clear: both;"></div>
                <div class="rateYo"><input type="hidden" value="4.1" name="rateyoid" class="rateyoid"></div><br>
            </div>
            <p>Ordered takeout from here a few weeks back. Food was ready for pickup on time. 
                Food was good/fresh and each dish has the restaurant's own unique style. 
                Met the owner - very nice guy who really appreciated my business (as well as others in line picking up 
                their orders or leaving the restaurant ahead of me). Highly recommend and will be back again.</p><hr>
            
            <div class="userDate">
                <p class="user">Username: Frank 
                <p class="date">Date: 11/13/2017</p>
                </p>
                <div style="clear: both;"></div>
                <div class="rateYo"><input type="hidden" value="2.5" name="rateyoid" class="rateyoid"></div><br>
            </div>
            <p>This place has a cozy atmosphere with great love Irish music on Sunday's. 
                All the food looks great, but just don't order the cauliflower wings because you just pay $12 for 
                cauliflower with sauce on it. Big waste of money. Hopefully they take this off the menu or at least 
                cook them in batter. </p><hr>
            
            <div class="userDate">
                <p class="user">Username: Lisa 
                <p class="date">Date: 10/02/2017</p>
                </p>
                <div style="clear: both;"></div>
                <div class="rateYo"><input type="hidden" value="4.8" name="rateyoid" class="rateyoid"></div><br>
            </div>
            <p>Excellent place. Went there for brunch and had a burger which was the best burger I have ever had. 
                I've had burgers from prime steak houses that cost about double and were not as good. 
                The fries were also great. Highly recommend this place.</p>
        </div>
    </body>
</html>
