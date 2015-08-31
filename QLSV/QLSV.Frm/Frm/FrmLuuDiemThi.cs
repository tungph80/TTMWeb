﻿using System.Windows.Forms;

namespace QLSV.Frm.Frm
{
    public partial class FrmLuuDiemThi : Form
    {
        public bool bUpdate ;
        public FrmLuuDiemThi()
        {
            InitializeComponent();
        }

        private void btnOk_Click(object sender, System.EventArgs e)
        {
            bUpdate = true;
            Close();
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            switch (keyData)
            {
                case (Keys.Escape):
                    Close();
                    break;
            }

            return base.ProcessCmdKey(ref msg, keyData);
        }
    }
}
