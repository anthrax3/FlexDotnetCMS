﻿using FrameworkLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web.UI.WebControls;

namespace WebApplication.Admin.Users
{
    public partial class Default : AdvanceOptionsBasePage
    {
        private List<User> Items
        {
            get
            {
                return (List<User>)ContextHelper.GetFromRequestContext(ItemList.ClientID);
            }
            set
            {
                ContextHelper.SetToRequestContext(ItemList.ClientID, value);
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            this.Section.Text = this.Page.Title = "Manage Users";

			if (Items == null)
			{
				if (CurrentUser.IsInRole(RoleEnum.Developer))
				{
					Items = BaseMapper.GetDataModel().Users.OrderBy(i => i.UserName).ToList();
				}
				else
				{
					Items = BaseMapper.GetDataModel().Users.OrderBy(i => i.UserName).ToList().Where(i=>!i.IsInRole(RoleEnum.Developer)).ToList();
				}
			}

            Bind();
        }

        private void Bind()
        {
            ItemList.DataSource = Items;
            ItemList.DataBind();
        }

        protected void ItemList_DataBound(object sender, EventArgs e)
        {
            ItemList.UseAccessibleHeader = true;
            if (ItemList.HeaderRow != null)
            {
                ItemList.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void ItemList_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            ItemList.PageIndex = e.NewPageIndex;
            ItemList.DataBind();
        }

        protected void ItemList_Sorting(object sender, System.Web.UI.WebControls.GridViewSortEventArgs e)
        {
            var sortDirection = ((e.SortDirection == System.Web.UI.WebControls.SortDirection.Ascending) ? "ASC" : "DESC");
            Items = Items.OrderBy(e.SortExpression + " " + sortDirection).ToList();
            Bind();
        }
    }
}