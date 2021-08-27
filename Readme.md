<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128531077/14.1.8%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T191141)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxTextBox - How to convert all input characters to the uppercase using CSS
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t191141/)**
<!-- run online end -->


<p>There is a <a href="http://www.w3schools.com/cssref/pr_text_text-transform.asp">text-transform</a> property in CSS that allows showing all characters to input in uppercase. It is possible to apply this property to ASPxTextBox by creating the following rule:</p>


```css
        .uppercase .dxeEditAreaSys
        {
            text-transform: uppercase;
        }
```




```aspx
<dx:ASPxTextBox ID="textBox" runat="server" Width="170px" CssClass="uppercase" ClientInstanceName="tb">
</dx:ASPxTextBox>

```


<p> However, this property creates only a visible effect of uppercasing. The real text remains in the same case: </p>
<p><img src="https://raw.githubusercontent.com/DevExpress-Examples/aspxtextbox-how-to-convert-all-input-characters-to-the-uppercase-using-css-t191141/14.1.8+/media/705c6f94-8cea-11e4-80ba-00155d624807.png"><br /><br />Thus, if you want to get uppercased values from the editor, it is necessary to transform text manually. <br />On the client side:</p>


```js
label1.SetText(tb.GetText().toUpperCase());

```


<p> On the server side:</p>


```cs
label2.Text = textBox.Text.ToUpper();
```




```vb
label2.Text = textBox.Text.ToUpper()
```


<p> </p>
<p><strong>See also:<br /></strong><a href="https://www.devexpress.com/Support/Center/p/E4297">How to convert all input characters to the uppercase in ASPxTextBox</a></p>

<br/>


