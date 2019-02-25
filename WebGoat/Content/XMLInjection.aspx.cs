using System;
using System.Collections.Generic;
using System.Xml;
using System.Text;

namespace OWASP.WebGoat.NET
{
    public partial class XMLInjection : System.Web.UI.Page
    {
        List<User> users;
        protected void Page_Load(object sender, EventArgs e)
        {


            ReadXml();

            gvUsers.DataSource = users.ToArray();
           
            gvUsers.DataBind();

/*<?xml version="1.0" standalone="yes"?>
<users>
  <user>
    <name>Todd Smith</name>
    <email>todd@example.com</email>
  </user>
  <user>
    <name>Al Thompson</name>
    <email>al@example.com</email>
  </user>
</users>
*/

            //Need to add lesson!
            if (Request.QueryString["name"] != null && Request.QueryString["email"] != null)
            {
                users.Add(new User(Request.QueryString["name"], Request.QueryString["email"]));
                WriteXML();
            }
        }

        private void ReadXml()
        {
            users = new List<User>();
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("/App_Data/XmlInjectionUsers.xml"));
            foreach (XmlNode node in doc.ChildNodes[1].ChildNodes)
            {
                if (node.Name == "user")
                {
                    users.Add(new User(node.ChildNodes[0].InnerText, node.ChildNodes[1].InnerText));
                }
            }
        }

        private void WriteXML()
        {
            string xml = "<?xml version=\"1.0\" standalone=\"yes\"?>"+ Environment.NewLine +"<users>" + Environment.NewLine;
            foreach (User user in users)
            {
                xml += "<user>" + Environment.NewLine;
                xml += "<name>" + user.Name + "</name>" + Environment.NewLine;
                xml += "<email>" + user.Email + "</email>" + Environment.NewLine;
                xml += "</user>" + Environment.NewLine;
            }
            xml += "</users>" +Environment.NewLine;

            XmlTextWriter writer = new XmlTextWriter(Server.MapPath("/App_Data/XmlInjectionUsers.xml"), Encoding.UTF8);
            writer.WriteRaw(xml);
            writer.Close();
        }
    }
}
