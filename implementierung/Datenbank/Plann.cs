//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Perso.Datenbank
{
    using System;
    using System.Collections.Generic;
    
    public partial class Plann
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Plann()
        {
            this.Mitarbeiter = new HashSet<Mitarbeiter>();
        }
    
        public int ID_Plan { get; set; }
        public string Jahr { get; set; }
        public string Kalenderwoche { get; set; }
        public string Wochentag { get; set; }
        public Nullable<System.DateTime> Termin { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Mitarbeiter> Mitarbeiter { get; set; }
    }
}
