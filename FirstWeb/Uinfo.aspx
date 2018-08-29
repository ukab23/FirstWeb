<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Uinfo.aspx.cs" Inherits="FirstWeb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please enter some information</p>
    <p>
        &nbsp;</p>

        <!-- Validations for Name -->
    <p>
        <asp:Label class="mylebal" ID="Label1" runat="server" Text="User Name" Width="100px"></asp:Label>
        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="mytextbox" ID="Tbname" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Tbname"
            ErrorMessage="Please enter Name"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>

        <!-- Validations for Gender -->
    <p>
        <asp:Label class="mylebal" ID="Label5" runat="server" Text="Gender" Width="100px"></asp:Label>
        <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="Ddlgen" runat="server" Width="200px" BackColor="#CCCCCC">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Ddlgen"
            ErrorMessage="Please Select Gender"></asp:RequiredFieldValidator>
    </p>

        <!-- Validations for Age -->
    <p>
        <asp:Label class="mylebal" ID="Label6" runat="server" Text="Age" Width="100px"></asp:Label>
&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="mytextbox" ID="Tbage" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Tbage"
            ErrorMessage="Please enter Age"></asp:RequiredFieldValidator>
    </p>

        <!-- Validations for Mobile Number -->
    <p>
        <asp:Label class="mylebal" ID="Label2" runat="server" Text="Contact Number" Width="100px"></asp:Label>
        <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="mytextbox" ID="Tbnumber" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Tbnumber"
            ErrorMessage="Please enter Mobile Number"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
            runat="server"  
            Display="Dynamic"
            ControlToValidate="Tbnumber"
            ErrorMessage="Enter 10 Digit mobile Number"  
            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>

        <!-- Validations for Email -->
    <p>
        <asp:Label class="mylebal" ID="Label3" runat="server" Text="Email Id" Width="100px"></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="mytextbox" ID="Tbemailid" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Tbemailid"
            ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
    <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Tbemailid"
            ErrorMessage="Please enter corect email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

        <!-- Validations for Address -->
    <p>
        <asp:Label class="mylebal" ID="Label4" runat="server" Text="Address" Width="100px"></asp:Label>
        <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="mytextbox" ID="Tbaddress" runat="server" Width="200px" BackColor="#CCCCCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
            runat="server"
            Display="Dynamic"
            ControlToValidate="Tbaddress"
            ErrorMessage="Please enter Address"></asp:RequiredFieldValidator>
    </p>

        <!-- Validations for Department -->
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>

    <p>
        &nbsp;</p>
        <p>
            <asp:Button class="mybtn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </p>
        <p>
            <asp:Button class="mybtn" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click"/>
    </p>
        </div>
</asp:Content>
