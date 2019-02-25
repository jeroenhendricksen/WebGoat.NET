<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Master-Pages/Site.Master" AutoEventWireup="true" CodeBehind="XMLExternalEntity.aspx.cs" Inherits="OWASP.WebGoat.NET.Content.XMLExternalEntity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">

    <%--
        Throw in some hints here. Many will have a hard time figuring it out:
            
            send xml with a reference to an external entity:
        https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.md
    --%>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">

    <h1 class="title-regular-4 clearfix">XML External Entities in .NET</h1>

    <p>Try extracting some files from the server ;)</p>
 
    <p><asp:TextBox ID="txtBoxXmlInput" runat="server" TextMode="MultiLine" Width="400px" Height="100px" 
                    Text="&lt;/users&gt;
  &lt;user&gt;
    &lt;name&gt;Patrick van Ek&lt;/name&gt;
    &lt;email&gt;Patrick@webgoat.com&lt;/email&gt;
  &lt;/user&gt;
  &lt;user&gt;
    &lt;name&gt;Rdw gebruiker&lt;/name&gt;
    &lt;email&gt;rdw@webgoat.com&lt;/email&gt;
  &lt;/user&gt;
&lt;/users&gt;"/></p>
    
    <p><asp:Button ID="btnXmlInput" runat="server" onclick="btnXmlInput_Click" 
                   Text="Send XML" SkinID="Button"/></p>

    <p>Result: <asp:Label ID="lblXmlOutput" runat="server" /></p>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HelpContentPlaceholder" runat="server">

</asp:Content>