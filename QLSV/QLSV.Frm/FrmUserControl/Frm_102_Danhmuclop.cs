﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using Infragistics.Win;
using Infragistics.Win.UltraWinGrid;
using QLSV.Core.Domain;
using QLSV.Core.LINQ;
using QLSV.Core.Utils.Core;
using QLSV.Data.Utils.Data;
using QLSV.Frm.Base;
using QLSV.Frm.Frm;
using QLSV.Frm.Ultis.Frm;

namespace QLSV.Frm.FrmUserControl
{
    public partial class Frm_102_Danhmuclop : FunctionControlHasGrid
    {
        private readonly List<Lop> _listAdd = new List<Lop>();
        private readonly List<Lop> _listUpdate = new List<Lop>();
        private int _idkhoa;
        private UltraGridRow _newRow;
        public Frm_102_Danhmuclop()
        {
            InitializeComponent();
        }

        #region Exit
        protected virtual void LoadGrid()
        {
            try
            {
                _listAdd.Clear();
                _listUpdate.Clear();
                dgv_DanhSach.DataSource = LoadData.Load(16);
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        protected override void LoadFormDetail()
        {
            LoadGrid();
            _listUpdate.Clear();
            _listAdd.Clear();
        }

        protected override void InsertRow()
        {
            var frm = new FrmThemLop();
            frm.ShowDialog();
            LoadGrid();
        }

        protected override void DeleteRow()
        {
            try
            {
                bool check;
                if (dgv_DanhSach.Selected.Rows.Count > 0)
                {
                    foreach (var row in dgv_DanhSach.Selected.Rows)
                    {
                        var id = row.Cells["ID"].Text;
                        IdDelete.Add(int.Parse(id));
                    }
                    check = true;
                }
                else if (dgv_DanhSach.ActiveRow != null)
                {
                    check = false;
                    var idStr = dgv_DanhSach.ActiveRow.Cells["ID"].Text;
                    IdDelete.Add(int.Parse(idStr));
                }
                else
                {
                    MessageBox.Show(@"Chọn lớp để xóa");
                    return;
                }
                var b = DeleteData.KtraXoaThongTin(1, IdDelete);
                if (IdDelete.Count > 0 && b)
                {
                    if (DialogResult.Yes ==
                        MessageBox.Show(FormResource.MsgThongbaoxoalop,
                            FormResource.MsgCaption,
                            MessageBoxButtons.YesNo,
                            MessageBoxIcon.Question))
                    {

                        DeleteData.XoaLop(IdDelete);
                        Stt();
                        if (check)
                            dgv_DanhSach.DeleteSelectedRows(false);
                        else
                            dgv_DanhSach.ActiveRow.Delete(false);
                        MessageBox.Show(@"Xóa dữ liệu thành công", FormResource.MsgCaption);
                    }
                }
                else if (!b)
                {
                    MessageBox.Show(FormResource.Msgthongbaoxoalop2,
                        FormResource.MsgCaption,
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                }
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
                    if (_listUpdate.Count <= 0 && IdDelete.Count <= 0) return;
                    if (_listUpdate.Count > 0) UpdateData.UpdateLop(_listUpdate);
                    MessageBox.Show(FormResource.MsgThongbaothanhcong, FormResource.MsgCaption);
                    LoadFormDetail();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.Contains(FormResource.msgLostConnect) ? FormResource.txtLoiDB : ex.Message);
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
                DeleteData.Xoa("LOP");
                LoadFormDetail();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.Contains(FormResource.msgLostConnect) ? FormResource.txtLoiDB : ex.Message);
                Log2File.LogExceptionToFile(ex);
            }
        }

        private void Timkiemlop()
        {
            try
            {
                if (_newRow != null) _newRow.Selected = false;
                foreach (
                    var row in dgv_DanhSach.Rows.Where(row => row.Cells["MaLop"].Text.Equals(txtKhoa.Text, StringComparison.OrdinalIgnoreCase)))
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

        private void Stt()
        {
            for (var i = 0; i < dgv_DanhSach.Rows.Count; i++)
            {
                dgv_DanhSach.Rows[i].Cells["STT"].Value = i + 1;
            }
        }

        #endregion

        #region Event_uG

        private void uG_DanhSach_InitializeLayout(object sender, InitializeLayoutEventArgs e)
        {
            try
            {
                var band = e.Layout.Bands[0];
                band.Columns["ID"].Hidden = true;
                band.Columns["IdKhoa"].Hidden = true;
                band.Columns["STT"].CellAppearance.TextHAlign = HAlign.Center;
                band.Columns["MaLop"].CellAppearance.TextHAlign = HAlign.Center;
                band.Columns["STT"].CellAppearance.BackColor = Color.LightCyan;
                band.Columns["STT"].CellActivation = Activation.NoEdit;
                band.Columns["TenKhoa"].CellActivation = Activation.NoEdit;
                band.Columns["MaLop"].CellActivation = Activation.NoEdit;
                #region MyRegion
                band.Columns["STT"].MinWidth = 50;
                band.Columns["STT"].MaxWidth = 70;
                band.Columns["MaLop"].MinWidth = 100;
                band.Columns["MaLop"].MaxWidth = 120;
                band.Columns["IdKhoa"].MinWidth = 250;
                band.Columns["IdKhoa"].MaxWidth = 300;
                #endregion
                
                band.Override.HeaderAppearance.TextHAlign = HAlign.Center;
                band.Override.HeaderAppearance.FontData.SizeInPoints = 10;
                band.Override.HeaderAppearance.FontData.Bold = DefaultableBoolean.True;
                #region Caption

                band.Columns["MaLop"].Header.Caption = @"Mã lớp";
                band.Columns["TenKhoa"].Header.Caption = @"Tên khoa";

                #endregion

                band.Override.HeaderClickAction = HeaderClickAction.SortSingle;
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        private void uG_DanhSach_DoubleClickCell(object sender, DoubleClickCellEventArgs e)
        {
            var frm = new FrmSuaLop
            {
                update = false,
                Idlop = int.Parse(dgv_DanhSach.ActiveRow.Cells["ID"].Text),
                txtlop = {Text = dgv_DanhSach.ActiveRow.Cells["MaLop"].Text}
            };
            frm.ShowDialog();
            if (frm.update)
            {
                dgv_DanhSach.ActiveRow.Cells["MaLop"].Value = frm.txtlop.Text;
                dgv_DanhSach.ActiveRow.Cells["TenKhoa"].Value = frm.cbokhoa.Text;
                MessageBox.Show(@"Sửa dữ liệu thành công", @"Thông báo");
            }
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

        #endregion
        
        private void FrmDanhmuclop_Load(object sender, EventArgs e)
        {
            LoadForm();
            var table = LoadData.Load(3);
            var tb = new DataTable();
            tb.Columns.Add("ID", typeof(string));
            tb.Columns.Add("TenKhoa", typeof(string));
            tb.Rows.Add("0", "- Tất cả các khoa -");
            foreach (DataRow row in table.Rows)
            {
                tb.Rows.Add(row["ID"].ToString(), row["TenKhoa"].ToString());
            }
            cbokhoa.DataSource = tb;
        }

        private void uG_DanhSach_AfterSortChange(object sender, BandEventArgs e)
        {
            Stt();
        }

        private void cbokhoa_SelectedValueChanged(object sender, EventArgs e)
        {
            try
            {
                _idkhoa = int.Parse(cbokhoa.SelectedValue.ToString());
                if (_idkhoa == 0)
                {
                    LoadGrid();
                }
                else
                {
                    dgv_DanhSach.DataSource = SearchData.LoadCboLop(_idkhoa);
                }
            }
            catch (Exception ex)
            {
                Log2File.LogExceptionToFile(ex);
            }
        }

        private void btntimkiem_Click(object sender, EventArgs e)
        {
            Timkiemlop();
        }

        private void txtKhoa_KeyUp(object sender, KeyEventArgs e)
        {
            switch (e.KeyCode)
            {
                case (Keys.Enter):
                    Timkiemlop();
                    break;
            }
        }
    }
}