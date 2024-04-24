<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="SLTBweb.Admin.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass=""
                    Width="100%" Font-Size="12">
            <HeaderStyle BackColor="#007bff" ForeColor="white" />
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No">
                            <ItemTemplate>
                                <asp:Label ID="lblSrNo" runat="server" Text='<%# Container.DataItemIndex+1 %>' ForeColor="White"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Bus Name" DataField="BusName" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Passenger Name" DataField="PaxName" ItemStyle-ForeColor="White" />
                        <asp:BoundField HeaderText="Email ID" DataField="Email" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Contact No" DataField="Contact" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Origin" DataField="Origin" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Destination" DataField="Destination" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Travel Date" DataField="TravelDate" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Seat No" DataField="SeatNo" ItemStyle-ForeColor="White" />
                         <asp:BoundField HeaderText="Fare" DataField="Fare" ItemStyle-ForeColor="White" />
                        <asp:BoundField HeaderText="Booked By" DataField="BookedBy" ItemStyle-ForeColor="White" />
                    </Columns>
                </asp:GridView>
    </div>
</asp:Content>
