using System;
using System.Xml;

namespace OWASP.WebGoat.NET.Content
{
    public partial class XMLExternalEntity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnXmlInput_Click(object sender, EventArgs args)
        {
            try
            {
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(txtBoxXmlInput.Text);

                string output =
$@"
Xml:<br>
{Server.HtmlEncode(doc.OuterXml)}<br>
<br><br>
Content:<br>
{Server.HtmlEncode(doc.InnerText)}
";


                lblXmlOutput.Text = output;
            }
            catch (Exception e)
            {
                lblXmlOutput.Text = e.Message;
            }
        }
    }
}