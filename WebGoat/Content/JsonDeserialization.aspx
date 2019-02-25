<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Master-Pages/Site.Master" AutoEventWireup="true" CodeBehind="JsonDeserialization.aspx.cs" Inherits="OWASP.WebGoat.NET.Content.JsonDeserialization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">

    <%--
        Throw in some hints here. Many will have a hard time figuring it out:
    --%>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">

    <h1 class="title-regular-4 clearfix">JSON unsafe deserialization in .NET</h1>

    <p>Try running some code from Json ;)</p>
 
    <p><asp:TextBox ID="txtBoxJsonInput" runat="server" TextMode="MultiLine" Width="400px" Height="100px" 
                    Text="{
  &quot;$type&quot;: &quot;OWASP.WebGoat.NET.User, DotNetGoat&quot;,
  &quot;Name&quot;: &quot;Patrick&quot;,
  &quot;Email&quot;: &quot;Patrick.vanEk@webgoat.com&quot;
}"/>

    </p>
    
    <p><asp:Button ID="btnJsonInput" runat="server" onclick="btnJsonInput_Click" 
                   Text="Send Json" SkinID="Button"/></p>

    <p>Result: <asp:Label ID="lblJsonOutput" runat="server" /></p>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HelpContentPlaceholder" runat="server">

</asp:Content>