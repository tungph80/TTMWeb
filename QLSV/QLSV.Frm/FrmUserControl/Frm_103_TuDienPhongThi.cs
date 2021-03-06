﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using Infragistics.Win;
using Infragistics.Win.UltraWinGrid;
using PerpetuumSoft.Reporting.View;
using QLSV.Core.Domain;
using QLSV.Core.LINQ;
using QLSV.Core.Utils.Core;
using QLSV.Data.Utils.Data;
using QLSV.Frm.Base;
using QLSV.Frm.Ultis.Frm;
using Color = System.Drawing.Color;

namespace QLSV.Frm.FrmUserControl
{
    public partial class Frm_103_TuDienPhongThi : FunctionControlHasGrid
    {
        private DataTable _tbUpdate;
        private UltraGridRow _newRow;
        public Frm_103_TuDienPhongThi()
        {
            InitializeComponent();
        }

        #region Exit

        protected virtual DataTable GetTable()
        {
            var table = new DataTable();
            table.Columns.Add("ID", typeof(int));
            table.Columns.Add("TenPhong", typeof(string));
            table.Columns.Add("SucChua", typeof(int));
            table.Columns.Add("GhiChu", typeof(string));
            return table;
        }

        protected virtual void LoadGrid()
        {
            try
            {
                _tbUpdate = GetTable();
                dgv_DanhSach.DataSource = LoadData.Load(9);
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        protected override void LoadFormDetail()
        {
            try
            {
                LoadGrid();
                if (dgv_DanhSach.Rows.Count == 0)
                {
                    InsertRow();
                }
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        protected override void InsertRow()
        {
            InsertRow(dgv_DanhSach, "STT", "TenPhong");
        }

        protected override void DeleteRow()
        {
            try
            {
                DeleteRowGrid(dgv_DanhSach, "ID", "TenPhong");
                if (IdDelete.Count <= 0) return;
                DeleteData.Xoa(IdDelete, "PHONGTHI");
                Stt();
                MessageBox.Show(@"Xóa dữ liệu thành công.", FormResource.MsgCaption);
                IdDelete.Clear();
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        protected override void SaveDetail()
        {
            try
            {
                if (ValidateData())
                {
                    MessageBox.Show(@"Vui lòng nhập đầy đủ thông tin", @"Lỗi");
                }
                else
                {
                    var tbPhong = GetTable();
                    foreach (var row in dgv_DanhSach.Rows.Where(row => string.IsNullOrEmpty(row.Cells["ID"].Text)))
                    {
                        tbPhong.Rows.Add(null,
                            row.Cells["TenPhong"].Text,
                            row.Cells["SucChua"].Text,
                            row.Cells["GhiChu"].Text
                            );
                    }
                    if (tbPhong.Rows.Count > 0) _save.sp_InsertUpdate("sp_InsertPhong", "@tbl", tbPhong);
                    if (_tbUpdate.Rows.Count > 0) _save.sp_InsertUpdate("sp_UpdatePhong", "@tbl", _tbUpdate);
                    _tbUpdate.Clear();
                    MessageBox.Show(FormResource.MsgThongbaothanhcong, FormResource.MsgCaption, MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                    LoadFormDetail();
                }
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        protected virtual bool ValidateData()
        {
            var inputTypes = new List<InputType>
            {
                InputType.KhongKiemTra,
                InputType.KhongKiemTra,
                InputType.ChuoiRong,
                InputType.ChuoiRong,
                InputType.KhongKiemTra
                
            };
            return ValidateHighlight.UltraGrid(dgv_DanhSach, inputTypes);
        }

        protected override void XoaDetail()
        {
            try
            {
                DeleteData.Xoa("PHONGTHI");
                LoadFormDetail();
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        public void Rptdanhsach()
        {
            reportManager1.DataSources.Clear();
            reportManager1.DataSources.Add("danhsach", dgv_DanhSach.DataSource);
            rptdanhsachphongthi.FilePath = Application.StartupPath + @"\Reports\danhsachphongthi.rst";
            using (var previewForm = new PreviewForm(rptdanhsachphongthi))
            {
                previewForm.WindowState = FormWindowState.Maximized;
                rptdanhsachphongthi.Prepare();
                previewForm.ShowDialog();
            }
        }

        private void Stt()
        {
            for (var i = 0; i < dgv_DanhSach.Rows.Count; i++)
            {
                dgv_DanhSach.Rows[i].Cells["STT"].Value = i + 1;
            }
        }

        #endregion

        #region Event_uG

        private void uG_DanhSach_AfterExitEditMode(object sender, EventArgs e)
        {
            try
            {
                if (DeleteAndUpdate)
                {
                    DeleteAndUpdate = false;
                    return;
                }
                var id = dgv_DanhSach.ActiveRow.Cells["ID"].Text;
                if (string.IsNullOrEmpty(id)) return;
                

                _tbUpdate.Rows.Add(id,
                    dgv_DanhSach.ActiveRow.Cells["TenPhong"].Text,
                    dgv_DanhSach.ActiveRow.Cells["SucChua"].Text,
                    dgv_DanhSach.ActiveRow.Cells["GhiChu"].Text
                    );
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        private void uG_DanhSach_InitializeLayout(object sender, InitializeLayoutEventArgs e)
        {
            try
            {
                var band = e.Layout.Bands[0];
                band.Columns["ID"].Hidden = true;
                band.Override.CellAppearance.TextHAlign = HAlign.Center;
                band.Columns["STT"].CellActivation = Activation.NoEdit;
                band.Columns["STT"].CellAppearance.BackColor = Color.LightCyan;
                #region MyRegion

                band.Columns["STT"].MinWidth = 50;
                band.Columns["STT"].MaxWidth = 60;
                band.Columns["TenPhong"].MinWidth = 100;
                band.Columns["TenPhong"].MaxWidth = 120;
                band.Columns["SucChua"].MinWidth = 100;
                band.Columns["SucChua"].MaxWidth = 120;

                #endregion

                band.Override.HeaderAppearance.TextHAlign = HAlign.Center;
                band.Override.HeaderAppearance.FontData.SizeInPoints = 10;
                band.Override.HeaderAppearance.FontData.Bold = DefaultableBoolean.True;
                band.Columns["SucChua"].FormatNumberic();

                #region Caption

                band.Columns["TenPhong"].Header.Caption = @"Tên phòng";
                band.Columns["SucChua"].Header.Caption = @"Sức chứa";
                band.Columns["GhiChu"].Header.Caption = @"Ghi chú";

                #endregion
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        private void uG_DanhSach_KeyDown(object sender, KeyEventArgs e)
        {
            //try
            //{
            //    switch (e.KeyCode)
            //    {
            //        case Keys.Up:
            //            dgv_DanhSach.PerformAction(UltraGridAction.ExitEditMode, false, false);
            //            dgv_DanhSach.PerformAction(UltraGridAction.AboveCell, false, false);
            //            e.Handled = true;
            //            dgv_DanhSach.PerformAction(UltraGridAction.EnterEditMode, false, false);
            //            break;
            //        case Keys.Down:
            //            dgv_DanhSach.PerformAction(UltraGridAction.ExitEditMode, false, false);
            //            dgv_DanhSach.PerformAction(UltraGridAction.BelowCell, false, false);
            //            e.Handled = true;
            //            dgv_DanhSach.PerformAction(UltraGridAction.EnterEditMode, false, false);
            //            break;
            //        case Keys.Right:
            //            dgv_DanhSach.PerformAction(UltraGridAction.ExitEditMode, false, false);
            //            dgv_DanhSach.PerformAction(UltraGridAction.NextCellByTab, false, false);
            //            e.Handled = true;
            //            dgv_DanhSach.PerformAction(UltraGridAction.EnterEditMode, false, false);
            //            break;
            //        case Keys.Left:
            //            dgv_DanhSach.PerformAction(UltraGridAction.ExitEditMode, false, false);
            //            dgv_DanhSach.PerformAction(UltraGridAction.PrevCellByTab, false, false);
            //            e.Handled = true;
            //            dgv_DanhSach.PerformAction(UltraGridAction.EnterEditMode, false, false);
            //            break;
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Log2File.LogExceptionToFile(ex);
            //}
        }

        #endregion

        #region MenuStrip

        private void menuStrip_themdong_Click(object sender, EventArgs e)
        {
            InsertRow();
        }

        private void menuStrip_xoadong_Click(object sender, EventArgs e)
        {
            DeleteRow();
        }

        private void menuStripHuy_Click(object sender, EventArgs e)
        {
            LoadFormDetail();
        }

        private void menuStrip_luulai_Click(object sender, EventArgs e)
        {
            SaveDetail();
        }

        #endregion

        private void FrmDanhsachphongthi_Load(object sender, EventArgs e)
        {
            LoadForm();
        }

        private void dgv_DanhSach_BeforeRowsDeleted(object sender, BeforeRowsDeletedEventArgs e)
        {
            e.Cancel = !DeleteAndUpdate;
            DeleteAndUpdate = false;
        }

        private void Timkiemphong()
        {
            try
            {
                if (_newRow != null) _newRow.Selected = false;
                foreach (
                    var row in dgv_DanhSach.Rows.Where(row => row.Cells["TenPhong"].Text.Equals(txtKhoa.Text, StringComparison.OrdinalIgnoreCase)))
                {
                    dgv_DanhSach.ActiveRowScrollRegion.ScrollPosition = row.Index;
                    row.Selected = true;
                    _newRow = row;
                }
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        private void btntimkiem_Click(object sender, EventArgs e)
        {
            Timkiemphong();
        }

        private void txtKhoa_KeyUp(object sender, KeyEventArgs e)
        {
            switch (e.KeyCode)
            {
                case (Keys.Enter):
                    Timkiemphong();
                    break;
            }
        }

    }
}
