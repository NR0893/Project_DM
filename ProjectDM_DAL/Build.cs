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
    
    public partial class Build
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Build()
        {
            this.BuildItem = new HashSet<BuildItem>();
        }
    
        public int id { get; set; }
        public Nullable<int> godId { get; set; }
        public Nullable<int> userId { get; set; }
        public string buildName { get; set; }
        public string gameMode { get; set; }
        public System.DateTime dateCreated { get; set; }
        public int wins { get; set; }
        public int losses { get; set; }
    
        public virtual God God { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BuildItem> BuildItem { get; set; }
    }
}
