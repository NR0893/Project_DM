//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectDM_DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class ItemStat
    {
        public int id { get; set; }
        public Nullable<int> itemId { get; set; }
        public Nullable<int> statId { get; set; }
        public double statValue { get; set; }
    
        public virtual Item Item { get; set; }
        public virtual Stat Stat { get; set; }
    }
}
