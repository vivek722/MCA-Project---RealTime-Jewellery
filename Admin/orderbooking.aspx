<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="orderbooking.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Order Booking Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
              <div class="table-responsive">             
              
                  
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                      AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                      EmptyDataText="There are no data records to display."  CssClass="table table-striped table-bordered table-hover" Width="100%" >
                      <Columns>
                          <asp:BoundField DataField="ordid" HeaderText="ordid" ReadOnly="True" 
                              SortExpression="ordid" />
                          <asp:BoundField DataField="umobileno" HeaderText="umobileno" 
                              SortExpression="umobileno" />
                          <asp:BoundField DataField="ord_img" HeaderText="ord_img" 
                              SortExpression="ord_img" />
                          <asp:BoundField DataField="ord_itemdetail" HeaderText="ord_itemdetail" 
                              SortExpression="ord_itemdetail" />
                          <asp:BoundField DataField="ord_price" HeaderText="ord_price" 
                              SortExpression="ord_price" />
                          <asp:BoundField DataField="ord_size" HeaderText="ord_size" 
                              SortExpression="ord_size" />
                          <asp:BoundField DataField="ord_qty" HeaderText="ord_qty" 
                              SortExpression="ord_qty" />
                          <asp:BoundField DataField="ord_total" HeaderText="ord_total" 
                              SortExpression="ord_total" />
                          <asp:BoundField DataField="ord_disc" HeaderText="ord_disc" 
                              SortExpression="ord_disc" />
                          <asp:BoundField DataField="ord_nettot" HeaderText="ord_nettot" 
                              SortExpression="ord_nettot" />
                      </Columns>
                  </asp:GridView>
                   
                   </div>
                  
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:constr %>" 
                      SelectCommand="SELECT [ordid], [umobileno], [ord_img], [ord_itemdetail], [ord_price], [ord_size], [ord_qty], [ord_total], [ord_disc], [ord_nettot] FROM [order_detail]">
                  </asp:SqlDataSource>
                           
          </fieldset>
        </form>
      </div>
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2022 RealTime Jewellery. All rights reserved <%--| Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> --%></p>
   </div>
   </div>

</asp:Content>

