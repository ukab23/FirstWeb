<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FirstWeb.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <table class="nav-justified" style="margin-left: 0px; margin-right: 0px" draggable="true">
            <tr>
                <td style="width: 75px"> 
                    &nbsp;</td>
                <td style="width: 139px"> 
                    &nbsp;</td>
                <td style="width: 200px"> 
                    <asp:Label ID="Label6" runat="server" Text="Regester Here"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td style="width: 100px"> 
                    &nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px"> 
                    &nbsp;</td>
                <td style="width: 139px"> 
           <form runat="server"> <asp:Label class="mylebal" ID="Label1" runat="server" Text="User Name" Width="100px"></asp:Label></form>
                    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td style="width: 200px"> 
                    &nbsp;</td>
                <td>
            <asp:TextBox class="mytextbox" ID="Tbusername" runat="server" AutoPostBack="true" BackColor="#CCCCCC" OnTextChanged="TextChanged"></asp:TextBox>
                </td>
                <td style="width: 100px"> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                runat="server"
                Display="Dynamic"
                ControlToValidate="Tbusername" 
                ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 200px">
                  <asp:Label ID="Label5" runat="server" Text="Label"  ForeColor="#FF5050" Visible="False"></asp:Label>  
                </td>
                <td>  
                    <div id="checkusername" runat ="server" visible="false"></div>       
                </td>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">
                    &nbsp;</td>
                <td style="width: 139px">
            <asp:Label class="mylebal" ID="Label2" runat="server" Text="Password" Width="100px"></asp:Label>
                    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>
            <asp:TextBox class="mytextbox" ID="Tbpassword" runat="server" TextMode="Password" BackColor="#CCCCCC"></asp:TextBox>
                </td>
                <td style="width: 100px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server"
                Display="Dynamic"
                ControlToValidate="Tbpassword"
                ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 200px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">
                    &nbsp;</td>
                <td style="width: 139px">
            <asp:Label class="mylebal" ID="Label4" runat="server" Text="Conform Password" Width="172px"></asp:Label>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>
            <asp:TextBox class="mytextbox" ID="Tbcmfpass" runat="server" TextMode="Password" BackColor="#CCCCCC"></asp:TextBox>
                </td>
                <td style="width: 100px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                runat="server"
                Display="Dynamic"
                ControlToValidate="Tbcmfpass" 
                ErrorMessage="Please enter Password Again"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 200px">&nbsp;</td>
                <td>
            <asp:CompareValidator id="comparePasswords" 
                runat ="server"
                Display="Dynamic"
                ControlToCompare="Tbpassword"
                ControlToValidate="Tbcmfpass"
                ErrorMessage="Your passwords do not match up!"
              />
                </td>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">
                    &nbsp;</td>
                <td style="width: 139px">
            <asp:Label class="mylebal" ID="Label3" runat="server" Text="Email Id" Width="100px"></asp:Label>
                    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td>
            <asp:TextBox class="mytextbox" ID="Tbemail" runat="server" TextMode="Password" BackColor="#CCCCCC"></asp:TextBox>
                </td>
                <td style="width: 100px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server"
                Display="Dynamic"
                ControlToValidate="Tbemail"
                ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 200px">&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 200px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px; height: 68px;"></td>
                <td style="width: 139px; height: 68px;"></td>
                <td style="width: 200px; height: 68px;">
            <asp:Button class="mybtn1" ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
                </td>
                <td style="height: 68px">
                    </td>
                <td style="width: 100px; height: 68px;"></td>
                <td style="width: 75px; height: 68px;"></td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 139px" draggable="auto">&nbsp;</td>
                <td style="width: 200px">
            <a href="Login.aspx">Already Registered?..Login Here..!</a></td>
                <td>
                    &nbsp;</td>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 75px">&nbsp;</td>
            </tr>
        </table>

    </div>

</asp:Content>


