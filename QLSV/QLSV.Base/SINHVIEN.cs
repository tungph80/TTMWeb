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
    
    public partial class SINHVIEN
    {
        public SINHVIEN()
        {
            this.DIEMTHIs = new HashSet<DIEMTHI>();
            this.XEPPHONGs = new HashSet<XEPPHONG>();
        }
    
        public int MaSV { get; set; }
        public string HoSV { get; set; }
        public string TenSV { get; set; }
        public string NgaySinh { get; set; }
        public int IdLop { get; set; }
    
        public virtual ICollection<DIEMTHI> DIEMTHIs { get; set; }
        public virtual LOP LOP { get; set; }
        public virtual ICollection<XEPPHONG> XEPPHONGs { get; set; }
    }
}
