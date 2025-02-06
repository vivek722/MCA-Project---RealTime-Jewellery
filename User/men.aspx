<%@ Page Title="" Language="C#" MasterPageFile="~/User/men.master" AutoEventWireup="true" CodeFile="men.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                
<div class="men-wear">
	<div class="container" style="width:auto;">
    <div class="col-md-4 products-left">
    </div>
    <div class="col-md-8 products-right" >
			<h5>Product Compare</h5>
			<div class="sort-grid">
				<div class="sorting">
					<h6>Sort By</h6>
                    <%# "₹ " + Eval("proprice")%>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        AutoPostBack="True">
                        <asp:ListItem>Default</asp:ListItem>
                        <asp:ListItem>Name(A - Z)</asp:ListItem>
                        <asp:ListItem>Name(Z - A)</asp:ListItem>
                        <asp:ListItem>Price(High - Low)</asp:ListItem>
                        <asp:ListItem>Price(Low - High)</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sql_default" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 3 * FROM [product] WHERE ([category] = @category) ORDER BY [proname]">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="category" QueryStringField="mid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_a_z" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 3 * FROM [product] WHERE ([category] = @category) ORDER BY [proname]">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="category" QueryStringField="mid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_z_a" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 3 * FROM [product] WHERE ([category] = @category) ORDER BY [proname] DESC">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="category" QueryStringField="mid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_h_l" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 3 * FROM [product] WHERE ([category] = @category) ORDER BY [proofferprice] DESC">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="category" QueryStringField="mid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_l_h" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 3 * FROM [product] WHERE ([category] = @category) ORDER BY [proofferprice]">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="category" QueryStringField="mid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
					
                    <div class="clearfix"></div>
				</div>
				<div class="sorting">
					<h6>Showing</h6>
                    <%--<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>--%>
                    <asp:DropDownList ID="ddl_show" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                    </asp:DropDownList>

                   <%-- <asp:SqlDataSource ID="sql_5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 5 * FROM [product]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_9" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 9 * FROM [product]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_14" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT TOP 14 * FROM [product]"></asp:SqlDataSource>--%>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="men-wear-top">
				<script src="js/responsiveslides.min.js"></script>
				<script>
				    // You can also use "$(window).load(function() {"
				    $(function () {
				        // Slideshow 4
				        $("#slider3").responsiveSlides({
				            auto: true,
				            pager: true,
				            nav: false,
				            speed: 500,
				            namespace: "callbacks",
				            before: function () {
				                $('.events').append("<li>before event fired.</li>");
				            },
				            after: function () {
				                $('.events').append("<li>after event fired.</li>");
				            }
				        });
				    });
				</script>
				<%--<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<img class="img-responsive" src="images/men1.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="images/men2.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="images/men1.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="images/men2.jpg" alt=" "/>
						</li>
					</ul>
				</div>--%>
				<div class="clearfix"></div>
			</div>
          
			
				
                <div class="clearfix"></div>
                 	<div class="men-wear-top">
				
				<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<img class="img-responsive" src="images/2.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="discount/m_slider3.jpg" alt=" "/>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
               <ItemTemplate>
                <div class="col-md-4 product-men no-pad-men" style="width:auto;">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../Admin/upload/<%#Eval("proimg") %>" alt="" class="pro-image-front">
							<img src='../Admin/upload/<%#Eval("probimg") %>' alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="quickview.aspx?proid=<%#Eval("proid") %>" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href=""><%#Eval("proname") %></a></h4>
									<div class="info-product-price">
										<span class="item_price"><%# "₹ " + Eval("proofferprice")%></span>
										<del><%# "₹ " + Eval("proprice")%></del>
									</div>
									<%--<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>--%>
						</div>
					</div>
				</div>
               </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:constr %>" 
                SelectCommand="SELECT TOP 3 * FROM [product] ORDER BY [category]">
                
            </asp:SqlDataSource>
			</div>	
	</div>
</div>

</asp:Content>

