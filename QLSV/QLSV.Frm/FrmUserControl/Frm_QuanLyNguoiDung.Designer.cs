﻿namespace QLSV.Frm.FrmUserControl
{
    partial class Frm_QuanLyNguoiDung
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                //Close();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.dgv_DanhSach = new Infragistics.Win.UltraWinGrid.UltraGrid();
            this.menu_ug = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.menuStrip_themdong = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip_xoadong = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip_doipass = new System.Windows.Forms.ToolStripMenuItem();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_DanhSach)).BeginInit();
            this.menu_ug.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.panel3);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(816, 459);
            this.panel2.TabIndex = 1;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.dgv_DanhSach);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(816, 459);
            this.panel3.TabIndex = 27;
            // 
            // dgv_DanhSach
            // 
            this.dgv_DanhSach.ContextMenuStrip = this.menu_ug;
            this.dgv_DanhSach.DisplayLayout.AutoFitStyle = Infragistics.Win.UltraWinGrid.AutoFitStyle.ResizeAllColumns;
            this.dgv_DanhSach.DisplayLayout.CaptionVisible = Infragistics.Win.DefaultableBoolean.False;
            this.dgv_DanhSach.DisplayLayout.Override.WrapHeaderText = Infragistics.Win.DefaultableBoolean.True;
            this.dgv_DanhSach.DisplayLayout.ScrollBounds = Infragistics.Win.UltraWinGrid.ScrollBounds.ScrollToFill;
            this.dgv_DanhSach.DisplayLayout.ScrollStyle = Infragistics.Win.UltraWinGrid.ScrollStyle.Immediate;
            this.dgv_DanhSach.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_DanhSach.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.dgv_DanhSach.Location = new System.Drawing.Point(0, 0);
            this.dgv_DanhSach.Name = "dgv_DanhSach";
            this.dgv_DanhSach.Size = new System.Drawing.Size(816, 459);
            this.dgv_DanhSach.TabIndex = 25;
            this.dgv_DanhSach.InitializeLayout += new Infragistics.Win.UltraWinGrid.InitializeLayoutEventHandler(this.uG_DanhSach_InitializeLayout);
            this.dgv_DanhSach.AfterExitEditMode += new System.EventHandler(this.uG_DanhSach_AfterExitEditMode);
            this.dgv_DanhSach.BeforeRowsDeleted += new Infragistics.Win.UltraWinGrid.BeforeRowsDeletedEventHandler(this.uG_DanhSach_BeforeRowsDeleted);
            this.dgv_DanhSach.DoubleClickRow += new Infragistics.Win.UltraWinGrid.DoubleClickRowEventHandler(this.uG_DanhSach_DoubleClickRow);
            this.dgv_DanhSach.KeyDown += new System.Windows.Forms.KeyEventHandler(this.uG_DanhSach_KeyDown);
            // 
            // menu_ug
            // 
            this.menu_ug.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuStrip_themdong,
            this.menuStrip_xoadong,
            this.menuStrip_doipass});
            this.menu_ug.Name = "contextMenuStrip1";
            this.menu_ug.Size = new System.Drawing.Size(146, 70);
            // 
            // menuStrip_themdong
            // 
            this.menuStrip_themdong.Name = "menuStrip_themdong";
            this.menuStrip_themdong.Size = new System.Drawing.Size(145, 22);
            this.menuStrip_themdong.Text = "Thêm dòng";
            this.menuStrip_themdong.Click += new System.EventHandler(this.menuStrip_themdong_Click);
            // 
            // menuStrip_xoadong
            // 
            this.menuStrip_xoadong.Name = "menuStrip_xoadong";
            this.menuStrip_xoadong.Size = new System.Drawing.Size(145, 22);
            this.menuStrip_xoadong.Text = "Xóa dòng";
            this.menuStrip_xoadong.Click += new System.EventHandler(this.menuStrip_xoadong_Click);
            // 
            // menuStrip_doipass
            // 
            this.menuStrip_doipass.Name = "menuStrip_doipass";
            this.menuStrip_doipass.Size = new System.Drawing.Size(145, 22);
            this.menuStrip_doipass.Text = "Đổi mật khẩu";
            this.menuStrip_doipass.Click += new System.EventHandler(this.menuStrip_doipass_Click);
            // 
            // Frm_QuanLyNguoiDung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel2);
            this.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.Name = "Frm_QuanLyNguoiDung";
            this.Size = new System.Drawing.Size(816, 459);
            this.Load += new System.EventHandler(this.FrmQuanLyNguoiDung_Load);
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_DanhSach)).EndInit();
            this.menu_ug.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private Infragistics.Win.UltraWinGrid.UltraGrid dgv_DanhSach;
        private System.Windows.Forms.ContextMenuStrip menu_ug;
        private System.Windows.Forms.ToolStripMenuItem menuStrip_themdong;
        private System.Windows.Forms.ToolStripMenuItem menuStrip_xoadong;
        private System.Windows.Forms.ToolStripMenuItem menuStrip_doipass;
        private System.Windows.Forms.Panel panel3;
    }
}