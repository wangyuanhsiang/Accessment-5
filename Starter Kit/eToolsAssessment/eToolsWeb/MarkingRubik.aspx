﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MarkingRubik.aspx.cs" Inherits="MarkingRubik" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CQRS</h1>
    <h2>Evaluation Key and Rubik</h2>&nbsp;&nbsp;<a href="Specifications.aspx">Specifications</a>
    
    <p>
        <table align="center" style="width: 50%" border="1">
            <tr style="background-color:darkgray">
                <td valign="top">Evaluation Item</td>
                <td>Max<br />
                    Mark</td>

            </tr>
           
            <tr>
                <td>Complete controller class: ToolsController<br />
                    Method to add a category</td>
                <td>1</td>
                
            </tr>
             <tr>
                <td>Complete controller class: ToolsController<br />
                    Method to update a category</td>
                <td>1</td>
                
            </tr>
             <tr>
                <td>Complete controller class: ToolsController<br />
                    Method to delete a category</td>
                <td>1</td>
                
            </tr>
            <tr>
                <td>Complete controller class: ToolsController<br />
                    Method to query list stock items by category</td>
                <td>3</td>
               
            </tr>
            <tr>
                <td>Command: Create CatgeoryODS using appropriate controller methods</td>
                <td>2</td>
               
            </tr>
            <tr>
                <td>Command: Setup ListView to use CategoryODS</td>
                <td>3</td>
                
            </tr>
            <tr>
                <td>Command: Wire error handling for CRUD form</td>
                <td>1</td>
               
            </tr>
            <tr>
                <td>Query: Create CategoryStockItemsODS using appropriate controller method</td>
                <td>1</td>
                
            </tr>
              <tr>
                <td>Query: Setup Repeater to use CategoryStockItemsODS</td>
                <td>3</td>
                
            </tr>
             <tr>
                <td>Query: Wire error handling for Repeater form</td>
                <td>1</td>
                
            </tr>
            <tr style="background-color:darkgray">
                <td>Total</td>
                <td>17</td>
               
            </tr>
        </table>
        </p>
    <p> <table align="center" style="width: 50%" border="1">
            <tr style="background-color:darkgray">
                <td style="width=10%">Mark</td>
                <td>Breakdown</td>
               
            </tr>
            <tr>
                <td>1</td>
                <td>1 = Proficient (requirement is done)<br />
	0 = Incomplete ( requirement not done)
</td>
               
            </tr>
            <tr>
                <td>2</td>
                <td>2 = Proficient (requirement is done)<br />
	1 = Limited  ( requirement is not done, minor errors)<br />
	0 = Incomplete ( requirement poorly done, missing large portions)

</td>
            </tr>
            <tr>
                <td>3</td>
                <td>3 = Proficient (requirement is done)<br />
	2 = Capable (requirement is not done, minor errors)<br />
	1 = Limited  ( requirement is not done, major errors)<br />
	0 = Incomplete ( requirement poorly done, missing large portions)<br />
</td>
            </tr>
          
        </table></p>
</asp:Content>
