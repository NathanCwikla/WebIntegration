<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ADreamComeTrue.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>

    <style>
		body {
			font-family: Arial, Helmet, Freesans, sans-sarif;
			margin: 0;
			line-height: 16px;
		}

        h1 {
            font-weight: bold;
            font-size: 3em;
            color: #000033;
            padding: 10px;
        }

        .blue {
            background-color: #e5e5ff;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            padding-top: 10px;
            margin-top: 0px;
        }
		
		.container {
			width: 70%;
			margin: 0px auto 0px auto;
		}

        #leftCol {
            width: 50%;
            float: left;
            padding: 0px 10px 0px 10px;
        }

        #rightCol {
            width: 45%;
            float: right;
            padding: 0px 10px 0px 10px;
        }
		
		#bar {
			width: 100%;
			height: 48px;
			background-color: #000033;
			margin: 0;
		}

		.clear {
            clear: both;
		}

		.center {
			text-align: center;
		}

        #navList {
            padding-top: 0;
            margin: 0;
            padding: 18px;
            font-size: 1.3em;
        }

        #navList li {
            color: #808080;
            display: inline;
            margin: 20px;
        }

        #navList li a {
            color: #808080;
            text-decoration: none;
        }

        #navList li a:hover {
            color: #ffcc00;
        }

        #content li {
            font-size: 1.2em;
            margin: 10px;
        }

        #line {
            border-bottom: 1px solid #808080;
            border-radius: 10px;
            padding: 10px;
        }
		
        #footer {
			margin-top: 65px;
		}

	    #ship {
            width: 100%;
        }

        #quote {
            font-weight: bold;
        }

	</style>
</head>


<body>
    <form id="form3" runat="server">

    <div id ="bar">
        <div class="container">
        <ul id="navList">
            <li> <a href="Home.aspx">Home</a> </li>
            <li> <a href="About.aspx">About</a> </li>
            <li> <a href="Contact.aspx">Contact</a> </li>
        </ul>
        </div>
    </div>



    <div class="container">


        <img id="ship" src="Models/Images/ship.jpg" />

        <div class="blue">

            <h1>Contact a Travel Agent Today</h1>

            <div id="leftCol">
                <p>Address: 143 VALLEYVIEW ST, 24251 GATE CITY</p>
                <p>Phone: 1(800)555-5555</p>
                <p>Email: <a href="mailto:fake@gmail.com">fake_email@gmail.com</a></p>
            </div>


            <div class="clear"></div>

            <div id="line"></div>
        </div>

        <div id="footer">
			<p>Created by: Nathan Cwikla
			<br/>Contact Information: <a href="mailto:nathan_cwikla@my.minnesota.edu">nathan_cwikla@my.minnesota.edu</a></p>
		</div>

    </div>

    </form>
</body>
</html>