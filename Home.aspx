<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ADreamComeTrue.Home" ViewStateMode="Disabled"%>

<!DOCTYPE html>


<script runat="server">


    public void submit_click(Object sender,
                           EventArgs e)
    {
        Boolean validName = false;
        Boolean validInput = false;
        Boolean validEmail = false;
        string name = txtName.Text;
        string email = txtEmail.Text;

        var n = name.IndexOf(" ");
        if (n != -1)
        {
            validName = true;
        } else
        {
            lblInvalidName.Visible = true;
        }


        if (txtName.Text != "" && txtEmail.Text != ""){
            validInput = true;
        } else
        {
            lblInvalidInput.Visible = true;
        }


        var i = email.IndexOf("@");
        if (i != -1)
        {
            validEmail = true;
        } else
        {
            lblInvalidEmail.Visible = true;
        }


        if (validName && validInput && validEmail)
        {
            //Display the coupon div.
            coupon.Visible = true;
            lblName.Text = txtName.Text;
            lblEmail.Text = txtEmail.Text;
            lblTime.Text = Convert.ToString(DateTime.Now);
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;

            sendToDatabase();
        }


    }


</script>




<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>A Dream Come True</title>

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

        .leftCol {
            width: 50%;
            float: left;
            padding: 0px 10px 0px 10px;
        }

        .rightCol {
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

        #coupon {
            margin: 0px 10px 0px 10px;
            border: 3px solid #808080;
            border-radius: 10px;
            text-align: center;
        }

	</style>

</head>


<body onload="getSeason()">
    <form id="form1" method="post" runat="server">


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

            <h1>A Dream Come True Travel Services</h1>

            <div class="leftCol">
            <h3>Check out our <span id="season">seasonal</span> offers!</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dui diam, faucibus non pharetra et, commodo sit amet tortor. Sed in tincidunt leo. Nunc aliquet libero vitae iaculis commodo. Duis egestas eros in nunc elementum pharetra. Pellentesque vehicula mauris tristique urna viverra ultrices non vitae metus. Maecenas vitae ex auctor, sodales sapien in, malesuada ex. Curabitur vitae aliquam ligula. Aenean a felis tellus. Suspendisse sed dignissim risus. Phasellus in lorem mi. Phasellus tincidunt orci et nisi porta, non mollis mi pharetra. Pellentesque odio enim, mollis pretium vulputate nec, semper non nibh. Morbi quis scelerisque ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>



            <p id="quote">"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</p>
            </div>


            <div class="rightCol">
                <h3>Specializing in Disney vacations.</h3>
                <ul id="content">
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Morbi accumsan orci ac ipsum mollis pulvinar.</li>
                    <li>Phasellus a ex euismod, aliquam erat eget, porttitor ex.</li>
                </ul>

                <%--weather forcast box--%>

                <asp:TextBox ID="txtCity" runat="server" Text="" />
                <asp:Button Text="Get Weather Information" runat="server" OnClick="GetWeatherInfo" />
                <hr />
                <table id="tblWeather" runat="server" border="0" cellpadding="0" cellspacing="0" visible="false">
                    <tr>
                        <th colspan="2">Weather Information</th>
                    </tr>
                    <tr>
                         <td rowspan="3"><asp:Image ID="imgWeatherIcon" runat="server" /></td>
                    </tr>
                    <tr>
                         <td>
                            <asp:Label ID="lblCity_Country" runat="server" />
                            <asp:Image ID="imgCountryFlag" runat="server" />
                            <asp:Label ID="lblDescription" runat="server" />
                             Humidity:
                            <asp:Label ID="lblHumidity" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Temperature:
                            (Min:
                            <asp:Label ID="lblTempMin" runat="server" />
                                Max:
                            <asp:Label ID="lblTempMax" runat="server" />
                                Day:
                            <asp:Label ID="lblTempDay" runat="server" />
                                Night:
                            <asp:Label ID="lblTempNight" runat="server" />)
                        </td>
                    </tr>
                </table>



            </div>

            <%--<div class="clear"></div>--%>

           
            <%--user input--%>
            <div class="leftCol">
                <h3>Recieve 15% off!</h3>
                <p>Name: <asp:TextBox ID="txtName" runat="server" ></asp:TextBox></p>
                <p>Email: <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox></p>
                <asp:Button id="Button1" OnClick="submit_click" runat="server" Text="Submit" /><br />

                <asp:Label ID="lblInvalidName" runat="server" Text="Enter first and last name" Visible="False" ForeColor="Red"></asp:Label><br />
                <asp:Label ID="lblInvalidEmail" runat="server" Text="Invalid Email" Visible="False" ForeColor="Red"></asp:Label><br />
                <asp:Label ID="lblInvalidInput" runat="server" Text="Enter name and Email" Visible="False" ForeColor="Red"></asp:Label><br />

            </div>





            <%--coupon--%>
            <div class="rightCol" id="coupon" runat="server" 
                Visible="false">
                <p><asp:Label ID="lblName" runat="server" Font-Bold="True"></asp:Label>, Get 15% Off Disney Cruises</p>
<%--            <p><asp:label ID="lblName" runat="server" text ="<%=name %>"></asp:label> , Get 15% Off Disney Cruises</p>--%>
                <p>Promo Code: 6002-0984</p>
                <p><asp:Label ID="lblEmail" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblTime" runat="server"></asp:Label></p>

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

    <script type="text/javascript">
        function getSeason() {
            var date = new Date();
            var month = date.getMonth();
            var season;

            if (month >= 2 && month <= 4) {
                season = "spring";
            }
            else if (month >= 5 && month <= 7) {
                season = "summer";
            }
            else if (month >= 8 && month <= 10) {
                season = "fall";
            }
            else {
                season = "winter";
            }

            var result = season.link("Contact.aspx");

            document.getElementById("season").innerHTML = result;


        }
	</script>



</body>
</html>