using System;
using System.Collections.Generic;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class MDocumentDTO
	{
		public Guid bookingId;
		public List<BookingDocumentDto> documents;
		public MDocumentDTO (Guid bookingId, List<BookingDocumentDto> documents)
		{
			this.bookingId = bookingId;
			this.documents = documents;
		}
	}
}

