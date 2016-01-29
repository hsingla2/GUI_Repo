<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function test() {
            debugger;
            var combo = $find("cmbDemo");
            var comboItem = new Telerik.Web.UI.RadComboBoxItem();
            comboItem.set_text("New Item");
            comboItem.set_value("4");
            combo.trackChanges();
            var cmbDemo = combo.get_items();
            cmbDemo.add(comboItem);
            comboItem.select();
            combo.commitChanges();
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>

            <telerik:RadComboBox ID="cmbDemo" CheckBoxes="true" runat="server">
                <Items>
                    <telerik:RadComboBoxItem Text="A" Value="1" />
                    <telerik:RadComboBoxItem Text="B" Value="2" />
                    <telerik:RadComboBoxItem Text="C" Value="3" />
                    <telerik:RadComboBoxItem Text="D" Value="4" />
                </Items>
            </telerik:RadComboBox>

            <asp:Button ID="btnAddItem" Text="Add Item" runat="server" OnClientClick="test()" />

            <asp:Button ID="btnDisable" Text="Disable" runat="server" OnClick="btnDisable_Click" />

            <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click" />

        </div>
    </form>
</body>
</html>
