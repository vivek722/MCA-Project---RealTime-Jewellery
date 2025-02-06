<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>Contact</h3>
	</div>
</div>
<!-- //banner -->
<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="contact-grids">
				<div class="col-md-4 contact-grid text-center animated wow slideInLeft" data-wow-delay=".5s">
					<div class="contact-grid1">
						<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
						<h4>Address</h4>
						<p>Union Heights, Vesu, 4th floor, Surat , Gujarat.</p>
					</div>
				</div>
				<div class="col-md-4 contact-grid text-center animated wow slideInUp" data-wow-delay=".5s">
					<div class="contact-grid2">
						<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
						<h4>Call Us</h4>
						<p>+917043734852<span></span></p>
					</div>
				</div>
				<div class="col-md-4 contact-grid text-center animated wow slideInRight" data-wow-delay=".5s">
					<div class="contact-grid3">
						<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
						<h4>Email</h4>
						<p><a href="mailto:info@example.com">realtimejewellery@gmail.com</a><span><a href="mailto:info@example.com"></a></span></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<%--<div class="map wow fadeInDown animated" data-wow-delay=".5s">
				<h3 class="tittle">View On Map</h3>
				<iframe src="https://www.google.com/maps/place/shree uttar gujarat bba and bca college bhatar road , surat" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>--%>
			
		</div>
	</div>
	
<!-- //contact -->

</asp:Content>

