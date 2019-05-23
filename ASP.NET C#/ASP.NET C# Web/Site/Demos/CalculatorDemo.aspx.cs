using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CalculatorDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void CalculateButton_Click(object sender, EventArgs e)
    {
        
        if (ValueBox1.Text.Length > 0 && ValueBox2.Text.Length > 0)
        {
            int result = 0;
            int value1 = Convert.ToInt32(ValueBox1.Text);
            int value2 = Convert.ToInt32(ValueBox2.Text);
            Calculator myCalculator = new Calculator();
            Trace.Write(string.Format("Thực hiện Phép Toán{0}", OperatorList.SelectedValue));
            switch (OperatorList.SelectedValue)
            {
                case "+":
                    result = myCalculator.cong(value1,value2);
                    break;
                case "-":
                    result = myCalculator.tru(value1,value2);
                    break;
                case "*":
                    result = myCalculator.nhan(value1,value2);
                    break;
                case "/":
                    result = myCalculator.chia(value1, value2);
                    break;
            }
            ResultLabel.Text = result.ToString();
        }
        else
            ResultLabel.Text = string.Empty;
        Trace.Warn("Cảnh Báo ","Nhập Thông Tin vào TextBox?");
    }
}