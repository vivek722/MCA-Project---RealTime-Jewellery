﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="user_details.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>User Details Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
              <div class="table-responsive">             
              
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                      AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1" 
                      EmptyDataText="There are no data records to display." Width="100%"
                      CssClass="table table-striped table-bordered table-hover">
                      <Columns>
                          <asp:BoundField DataField="uid" HeaderText="User Id" ReadOnly="True" 
                              SortExpression="uid" />
                          <asp:BoundField DataField="uname" HeaderText="User Name" 
                              SortExpression="uname" />
                          <asp:BoundField DataField="umobileno" HeaderText="User Mobile No" 
                              SortExpression="umobileno" />
                          <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                              SortExpression="pincode" />
                          <asp:BoundField DataField="locality" HeaderText="Locality" 
                              SortExpression="locality" />
                          <asp:BoundField DataField="address" HeaderText="Address" 
                              SortExpression="address" />
                          <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                          <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                          <asp:BoundField DataField="landmark" HeaderText="Landmark" 
                              SortExpression="landmark" />
                          <asp:BoundField DataField="altumobileno" HeaderText="Alter Mobile No" 
                              SortExpression="altumobileno" />
                          <asp:BoundField DataField="uemail" HeaderText="User Email Id" 
                              SortExpression="uemail" />
                      </Columns>
                  </asp:GridView>
                    </div>
              
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:constr %>" 
                      DeleteCommand="DELETE FROM [delivery] WHERE [uid] = @uid" 
                      InsertCommand="INSERT INTO [delivery] ([uname], [umobileno], [pincode], [locality], [address], [city], [state], [landmark], [altumobileno], [uemail]) VALUES (@uname, @umobileno, @pincode, @locality, @address, @city, @state, @landmark, @altumobileno, @uemail)" 
                      SelectCommand="SELECT [uid], [uname], [umobileno], [pincode], [locality], [address], [city], [state], [landmark], [altumobileno], [uemail] FROM [delivery]" 
                      UpdateCommand="UPDATE [delivery] SET [uname] = @uname, [umobileno] = @umobileno, [pincode] = @pincode, [locality] = @locality, [address] = @address, [city] = @city, [state] = @state, [landmark] = @landmark, [altumobileno] = @altumobileno, [uemail] = @uemail WHERE [uid] = @uid">
                      <DeleteParameters>
                          <asp:Parameter Name="uid" Type="Decimal" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="uname" Type="String" />
                          <asp:Parameter Name="umobileno" Type="Decimal" />
                          <asp:Parameter Name="pincode" Type="Decimal" />
                          <asp:Parameter Name="locality" Type="String" />
                          <asp:Parameter Name="address" Type="String" />
                          <asp:Parameter Name="city" Type="String" />
                          <asp:Parameter Name="state" Type="String" />
                          <asp:Parameter Name="landmark" Type="String" />
                          <asp:Parameter Name="altumobileno" Type="Decimal" />
                          <asp:Parameter Name="uemail" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="uname" Type="String" />
                          <asp:Parameter Name="umobileno" Type="Decimal" />
                          <asp:Parameter Name="pincode" Type="Decimal" />
                          <asp:Parameter Name="locality" Type="String" />
                          <asp:Parameter Name="address" Type="String" />
                          <asp:Parameter Name="city" Type="String" />
                          <asp:Parameter Name="state" Type="String" />
                          <asp:Parameter Name="landmark" Type="String" />
                          <asp:Parameter Name="altumobileno" Type="Decimal" />
                          <asp:Parameter Name="uemail" Type="String" />
                          <asp:Parameter Name="uid" Type="Decimal" />
                      </UpdateParameters>
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

