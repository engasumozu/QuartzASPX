<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE HTML>
<!--
	Directive by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Diseño de Sistemas</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet" />
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/css/chosen.css" rel="stylesheet" />
        <link href="assets/css/custom.css" rel="stylesheet" />
        <link href="assets/css/elfinder.min.css" rel="stylesheet" />
        <link href="assets/css/elfinder.theme.css" rel="stylesheet" />
        <link href="assets/css/font-awesome-ie7.min.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
        <link href="assets/css/fullcalendar.css" rel="stylesheet" />
        <link href="assets/css/glyphicons.css" rel="stylesheet" />
        <link href="assets/css/halflings.css" rel="stylesheet" />
        <link href="assets/css/ie.css" rel="stylesheet" />
        <link href="assets/css/ie8.css" rel="stylesheet" />
        <link href="assets/css/ie9.css" rel="stylesheet" />
        <link href="assets/css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
        <link href="assets/css/jquery.cleditor.css" rel="stylesheet" />
        <link href="assets/css/jquery.gritter.css" rel="stylesheet" />
        <link href="assets/css/jquery.iphone.toggle.css" rel="stylesheet" />
        <link href="assets/css/jquery.noty.css" rel="stylesheet" />
        <link href="assets/css/main.css" rel="stylesheet" />
        <link href="assets/css/noty_theme_default.css" rel="stylesheet" />
        <link href="assets/css/style-forms.css" rel="stylesheet" />
        <link href="assets/css/style-responsive.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/css/uniform.default.css" rel="stylesheet" />
        <link href="assets/css/uploadify.css" rel="stylesheet" />
	</head>
	<body>
		<!-- Header -->
			<div id="header">
                <div class="row">
                    <div class="col-md-12">
                        
                <p>Ingrese su Email en la parte inferior</p>
                    </div>
                </div>
                <div class="row">
                    <div class=" col-md-4">

                    </div>
                    <div class=" col-md-4">
                        <p>Email:</p>
                        <h3> <asp:TextBox runat="server" ID="txt_test" Height="50px"></asp:TextBox> </h3>
                    </div>
                    <div class=" col-md-4">
                        
                    </div>
                </div>
                <div class="row">
                     <div class=" col-md-4">
                    </div>
                    <div class="col-md-4">
                        <p>Ahora haga Clic en el botón para iniciar la tarea</p><br />
                        <asp:Button runat="server" ID="btn_test" OnClick="btn_test_Click" Text="Iniciar" />
                        <asp:Button runat="server" ID="btn_Stop" OnClick="btn_Stop_Click" Text="Parar" Visible="false" />
                    </div>
                     <div class=" col-md-4">
                        
                    </div>

                </div>
                <br />
				<h1>Cristian Paolo Corado Cordero 0907-10-9234.</h1>
				<p>EC2 Infrastructure As a Service de <a href="https://aws.amazon.com/es/ec2/">AWS EC2.</a>
				<br />
        <strong>VM:</strong> AMI Windows Server 2012-R2 64Bit<br />
           <strong>RAM :</strong>1.00 GB<br />
           <strong>HDD :</strong>30 GB<br />
           <strong>CPU :</strong>Intel(R) Xeon(R) CPU E5-2670 2.5GHz<br />
           <strong>IIS :</strong>8.5<br />
        <strong>Tipo de Instancia: t2.micros</strong>
                    <br />
                    
				</p>
			</div>
             <div>
                 
                    
             </div>
        
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
    
</asp:Content>
