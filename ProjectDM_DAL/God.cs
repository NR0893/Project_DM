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
    
    public partial class God
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public God()
        {
            this.Ability = new HashSet<Ability>();
            this.Build = new HashSet<Build>();
            this.GodStat = new HashSet<GodStat>();
        }
    
        public int id { get; set; }
        public string godName { get; set; }
        public string title { get; set; }
        public string pantheon { get; set; }
        public string godRole { get; set; }
        public string attackType { get; set; }
        public string powerType { get; set; }
        public System.DateTime releaseDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ability> Ability { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Build> Build { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GodStat> GodStat { get; set; }
    }
}