//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLSV.Base
{
    using System;
    using System.Collections.Generic;
    
    public partial class BAILAM
    {
        public int IdKyThi { get; set; }
        public int MaSV { get; set; }
        public string MaDe { get; set; }
        public string KetQua { get; set; }
        public Nullable<double> DiemThi { get; set; }
        public string MaHoiDong { get; set; }
        public string MaLoCham { get; set; }
        public string TenFile { get; set; }
    
        public virtual KYTHI KYTHI { get; set; }
    }
}
