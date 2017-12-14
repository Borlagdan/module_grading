using MahApps.Metro.Controls;
using System.Data;
using System.IO;
using System.Windows;
using Microsoft.Win32;
using Excel;

namespace Module_Grading
{
    /// <summary>
    /// Interaction logic for LoadGrades.xaml
    /// </summary>
    public partial class LoadGrades : MetroWindow
    {
        string buttonContent;

        public LoadGrades()
        {
            InitializeComponent();
            
            buttonContent = "Open";
        }

        DataSet results;

        private void btn_Open_Click(object sender, RoutedEventArgs e)
        {
            cb_WorkBooks.SelectedIndex = -1;

            if (buttonContent.ToString() == "Open")
            {
                OpenFileDialog ofd = new OpenFileDialog();
                ofd.Filter = "Excel Workbook 97-2003|*.xls|Excel Workbook|*.xlsx";
                ofd.ValidateNames = true;

                if (ofd.ShowDialog() == true)
                {
                    FileStream fs = File.Open(ofd.FileName, FileMode.Open, FileAccess.Read);
                    IExcelDataReader reader;
                    
                    if(ofd.FilterIndex == 1)
                    {
                        reader = ExcelReaderFactory.CreateBinaryReader(fs);
                    }

                    else
                    {
                        reader = ExcelReaderFactory.CreateOpenXmlReader(fs);
                    }
                    
                    reader.IsFirstRowAsColumnNames = true;
                    results = reader.AsDataSet();

                    cb_WorkBooks.Items.Clear();

                    foreach (DataTable dt in results.Tables)
                    {
                        cb_WorkBooks.Items.Add(dt.TableName);

                        reader.Close();
                    }

                    btn_Open.Content = "Load";
                }

                else if (buttonContent.ToString() == "Load")
                {
                    dgv_Grades.Items.Clear();
                }
            }
        }

        private void cb_WorkBooks_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            if (cb_WorkBooks.SelectedIndex != -1)
            {
                dgv_Grades.ItemsSource = results.Tables[cb_WorkBooks.SelectedValue.ToString()].DefaultView;
            }
        }
    }
}
