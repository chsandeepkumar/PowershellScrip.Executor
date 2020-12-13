using System;
using System.Management.Automation;
using System.Text;
using System.Web.Services.Description;

namespace PowershallScript.Executor
{
    public partial class ScriptExecutor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Clean the Result TextBox
            txtCommandResult.Text = string.Empty;

            // Initialize PowerShell engine
            var shell = PowerShell.Create();

            // Add the script to the PowerShell object
            shell.Commands.AddScript(txtCommandInput.Text);

            // Execute the script
            var results = shell.Invoke();

            // display results, with BaseObject converted to string
            // Note : use |out-string for console-like output
            if (results.Count > 0)
            {
                // We use a string builder ton create our result text
                var builder = new StringBuilder();

                foreach (var psObject in results)
                {
                    // Convert the Base Object to a string and append it to the string builder.
                    // Add \r\n for line breaks
                    builder.Append(psObject.BaseObject.ToString() + "\r\n");
                }

                // Encode the string in HTML (prevent security issue with 'dangerous' caracters like < >
                txtCommandResult.Text = Server.HtmlEncode(builder.ToString());
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}