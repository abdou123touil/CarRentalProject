<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Custemer.aspx.cs" Inherits="CarRentalProject.Views.Admin.Custemer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form>

        <div class="form-row"  style="margin-left:40%;">
            <img src="../../Assets/img/custemer.jpg" style="width:200px;height:200px;" />
        </div>

  <div class="form-row"  style="margin-left:30%;">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Custemer Name</label>
      <input type="email" class="form-control" id="name" placeholder="Enter Custemer Name" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Custemer Adress</label>
      <input type="text" class="form-control" id="adress" placeholder="Enter Custemer Adress" runat="server">
    </div>

  
  <div class="form-group col-md-6">
    <label for="inputAddress2">Custemer Number</label>
    <input type="number" class="form-control" id="number" placeholder="Enter Custemer Number" runat="server">
  </div>
         <div class="form-group col-md-6">
    <label for="inputAddress2">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Enter password" runat="server">
  </div>
        
  <br />
        <br />
            <button type="submit" class="btn btn-primary" runat="server">Edit</button>
            <button type="submit" class="btn btn-primary " runat="server">Add</button>
            <button type="submit" class="btn btn-primary" runat="server">Delete</button>

  </div>
          <br />
        <br />
</form>

</asp:Content>
