using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Newtonsoft.Json;

namespace OWASP.WebGoat.NET.Content
{
    public partial class JsonDeserialization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnJsonInput_Click(object sender, EventArgs args)
        {
            try
            {
                string json = txtBoxJsonInput.Text;

                JsonSerializerSettings serializerSettings = new JsonSerializerSettings
                {
                    TypeNameHandling = TypeNameHandling.Auto
                };

                //could be any type of object
                object deserializedObject = JsonConvert.DeserializeObject(json, serializerSettings);

                lblJsonOutput.Text = deserializedObject.ToString();
            }
            catch (Exception e)
            {
                lblJsonOutput.Text = e.Message;
            }
        }
    }
}