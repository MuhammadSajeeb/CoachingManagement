using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C.Core.Models
{
    public class TuitionFee
    {
        public int Id { get; set; }
        public string StudentId { get; set; }
        public decimal Fees { get; set; }
        public decimal Due { get; set; }
        public DateTime Date { get; set; }

        public decimal LastPaid { get; set; }
        public decimal RemainingDue { get; set; }
    }
}
