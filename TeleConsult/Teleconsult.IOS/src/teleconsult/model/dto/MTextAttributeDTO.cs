using System;
using CoreGraphics;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class MTextAttributeDTO
	{
		public CGSize size;
		public NSMutableAttributedString textAttribute;

		public MTextAttributeDTO (NSMutableAttributedString textAttribute, CGSize size)
		{
			this.size = size;
			this.textAttribute = textAttribute;
		}
	}
}

