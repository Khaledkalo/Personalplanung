//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Personalplanung.Datenbank
{
    using System;
    using System.Collections.Generic;
    
    public partial class Mitarbeiter
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Mitarbeiter()
        {
            this.BenutzerKonto = new HashSet<BenutzerKonto>();
            this.Plann = new HashSet<Plann>();
        }
    
        public int ID_Mitarbeiter { get; set; }
        public string Name { get; set; }
        public string Vorname { get; set; }
        public Nullable<System.DateTime> Geburtsdatum { get; set; }
        public Nullable<System.DateTime> Einstellungsdatum { get; set; }
        public string Stellenbezeichnung { get; set; }
        public string Email { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BenutzerKonto> BenutzerKonto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Plann> Plann { get; set; }
    }
}
