﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="state.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Sate Page</h3>
  	    <div class="well1 white">
        <form id="Form1" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()" runat="server">
          <fieldset>
            <div class="form-group">
              <label class="control-label">Country Name</label>
                <%--<button type="reset" class="btn btn-default">Reset</button>--%>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    class="form-control1 ng-invalid ng-invalid-required" ng-model="model.select" 
                    DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid" 
                    AutoPostBack="True" >
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
                
            </div>
            <div class="form-group">
              <label class="control-label">State Name</label>
                <asp:TextBox ID="txtsname" runat="server" type="text" 
                    class="form-control1 ng-invalid ng-invalid-required ng-touched" 
                    ng-model="model.name"></asp:TextBox>
            </div>
            
              <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
            <div class="form-group filled">
              <label class="control-label">Status</label>
                <%--<button type="reset" class="btn btn-default">Reset</button>--%>
                <asp:DropDownList ID="ddlstatus" runat="server"  
                    class="form-control1 ng-invalid ng-invalid-required" ng-model="model.select" 
                    required="">
                    <asp:ListItem Enabled="true" Text="On" Value="1" ></asp:ListItem>
                    <asp:ListItem  Text="Off" Value="0" ></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
             <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <asp:Button ID="btn_add" runat="server"  Text="Add" class="btn btn-primary" 
                    onclick="btn_add_Click" />
              <%--<button type="reset" class="btn btn-default">Reset</button>--%>
                <asp:Button ID="btn_res" runat="server" Text="Reset" class="btn btn-default" 
                    onclick="btn_res_Click"/>
            </div>
            <br />
            <div class="table-responsive">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataKeyNames="sid" DataSourceID="SqlDataSource2" 
                  EmptyDataText="There are no data records to display." Width="100%" 
                    CssClass="table table-striped table-bordered table-hover" 
                    AllowPaging="True">
                  <Columns>
                      <asp:BoundField DataField="sid" HeaderText="State Id" ReadOnly="True" 
                          SortExpression="sid" />
                      <asp:BoundField DataField="cid" HeaderText="Country Id" SortExpression="cid" />
                      <asp:BoundField DataField="sname" HeaderText="State Name" 
                          SortExpression="sname" />
                      <asp:BoundField DataField="status" HeaderText="Status" 
                          SortExpression="status" />
                      <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                      <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                  </Columns>
              </asp:GridView>
              </div>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:constr %>" 
                  DeleteCommand="DELETE FROM [state] WHERE [sid] = @sid" 
                  InsertCommand="INSERT INTO [state] ([cid], [sname], [status]) VALUES (@cid, @sname, @status)" 
                  SelectCommand="SELECT [sid], [cid], [sname], [status] FROM [state]" 
                  
                  UpdateCommand="UPDATE [state] SET [cid] = @cid, [sname] = @sname, [status] = @status WHERE [sid] = @sid">
                  <DeleteParameters>
                      <asp:Parameter Name="sid" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="cid" Type="Int32" />
                      <asp:Parameter Name="sname" Type="String" />
                      <asp:Parameter Name="status" Type="Int32" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="cid" Type="Int32" />
                      <asp:Parameter Name="sname" Type="String" />
                      <asp:Parameter Name="status" Type="Int32" />
                      <asp:Parameter Name="sid" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
            <br />

          </fieldset>
        </form>
      </div>
    </div>
    <div class="copy_layout">
      <p>Copyright &copy; 2022 RealTime Jewellery. All rights reserved <%--| Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> --%></p>
   </div>
   </div>

</asp:Content>

