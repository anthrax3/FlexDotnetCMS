﻿using FrameworkLibrary;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.Admin.Controls.Fields
{
    public class FormFieldSettings
    {
        public string EmailAddress { get; set; }
        public string EmailTemplateMediaID { get; set; }
        public string Subject { get; set; }
    }

    public partial class FormBuilder : BaseFieldControl
    {
        protected void Page_Init(object sender, EventArgs e)
        {            
        }       

        public override void RenderControlInAdmin()
        {
            base.RenderControlInAdmin();
        }

        public override void RenderControlInFrontEnd()
        {
            base.RenderControlInFrontEnd();
        }

        public override object GetValue()
        {
            return FormBuilderData.Value;
        }

        public override void SetValue(object value)
        {
            FormBuilderData.Value = value.ToString();

            var field = GetField();

            var submissions = field.FrontEndSubmissions;

            if (submissions != null)
            {
                var dataTable = StringHelper.JsonToObject<DataTable>(submissions);

                if (dataTable != null && dataTable.Columns.Count > 0)
                {
                    dataTable.DefaultView.Sort = "DateSubmitted DESC";

                    FormSubmissions.DataSource = dataTable;
                    FormSubmissions.DataBind();
                }
            }

            if (field.FieldSettings != null)
            {
                var formFieldSettings = StringHelper.JsonToObject<FormFieldSettings>(field.FieldSettings);

                if (formFieldSettings != null)
                {
                    EmailAddress.Text = formFieldSettings.EmailAddress;
                    EmailTemplateMediaID.Text = formFieldSettings.EmailTemplateMediaID;
                    Subject.Text = formFieldSettings.Subject;
                }
            }

        }

        protected void ExportCSV_Click(object sender, EventArgs e)
        {
            var newDataTable = new DataTable();
            var dataTable = (FormSubmissions.DataSource as DataTable);

            newDataTable = dataTable.DefaultView.ToTable();

            var csv = newDataTable.DataTableToCSV(',');

            Services.BaseService.WriteRawCSV(csv, "Submissions");
        }

        protected void ClearAllSubmissions_Click(object sender, EventArgs e)
        {
            var field = GetField();
            field.FrontEndSubmissions = "";

            var returnObj = FieldsMapper.Update(field);

            if (!returnObj.IsError)
            {
                FormSubmissions.DataSource = new DataTable();
                FormSubmissions.DataBind();
            }
        }
        protected void FormSubmissions_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            FormSubmissions.PageIndex = e.NewPageIndex;

            var dataTable = (FormSubmissions.DataSource as DataTable);

            FormSubmissions.DataSource = dataTable;
            FormSubmissions.DataBind();
        }

        protected void SaveSettings_Click(object sender, EventArgs e)
        {
            var field = GetField();
            var formFieldsSettings = new FormFieldSettings();
            formFieldsSettings.EmailAddress = EmailAddress.Text;
            formFieldsSettings.EmailTemplateMediaID = EmailTemplateMediaID.Text;
            formFieldsSettings.Subject = Subject.Text;

            var jsonSettings = StringHelper.ObjectToJson(formFieldsSettings);
            field.FieldSettings = jsonSettings;            

            var returnObj = FieldsMapper.Update(field);

            if (!returnObj.IsError)
            {
                BasePage.DisplaySuccessMessage("Successfully saved field settings");
            }
            else
            {
                BasePage.DisplayErrorMessage(returnObj.Error.Message);
            }

        }

        public AdminBasePage BasePage
        {
            get
            {
                return (AdminBasePage)this.Page;
            }
        }
    }
}