<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CarRentalProject.Views.Admin.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <form >

        <div class="form-row"  style="margin-left:40%;">
            <img src="../../Assets/img/logo.jpg" style="width:200px;height:200px;" />
        </div>

  <div class="form-row"  style="margin-left:30%;">
    <div class="form-group col-md-6">
      <label for="inputPassword4">Lisence code</label>
      <input type="text" class="form-control" id="Lnumber" placeholder="Enter Lisence Number" runat="server">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Brand</label>
      <input type="text" class="form-control" id="brand" placeholder="Enter Brand" runat="server">
    </div>

  <div class="form-group col-md-6">
    <label for="inputAddress">Model</label>
    <input type="text" class="form-control" id="model" placeholder="Enter Model" runat="server">
  </div>
  <div class="form-group col-md-6">
    <label for="inputAddress2">Price</label>
    <input type="number" class="form-control" id="price" placeholder="Enter the Price" runat="server">
  </div>
         <div class="form-group col-md-6">
    <label for="inputAddress2">Coloer</label>
    <input type="text" class="form-control" id="color" placeholder="Enter the Color" runat="server">
  </div>
         <div class="form-group col-md-6">
    <label for="inputAddress2">Availablity</label>
    <asp:DropDownList id="avilable" runat="server">
        <asp:ListItem> Available</asp:ListItem>
        <asp:ListItem> Booked</asp:ListItem>
    </asp:DropDownList>
  </div>
  <br />
        <br />
      <label id="ErrorMsg" runat="server" ></label>
      <asp:Button type="submit" class="btn btn-primary" id="EditBtn" Text="Edit" runat="server" />
            <asp:Button type="submit" class="btn btn-primary" id="AddBtn" Text="Add" runat="server" OnClick="AddBtn_Click" />
            <asp:Button type="submit" class="btn btn-primary" id="DeleteBtn" Text="Delete" runat="server" />

  </div>
          <br />
        <br />
</form>
</asp:Content>
