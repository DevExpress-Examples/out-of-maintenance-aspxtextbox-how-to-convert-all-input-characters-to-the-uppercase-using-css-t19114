# ASPxTextBox - How to convert all input characters to the uppercase using CSS


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


